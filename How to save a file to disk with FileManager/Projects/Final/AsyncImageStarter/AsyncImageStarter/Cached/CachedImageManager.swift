//
//  CachedImageManager.swift
//  AsyncImageStarter
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import Foundation

final class CachedImageManager: ObservableObject {
    
    @Published private(set) var currentState: CurrentState?
    
    private let imageRetriver = ImageRetriver()
    
    @MainActor
    func load(_ item: (name: String, url: String),
              cache: ImageCache = .shared) async {
        
        
        /**
           
         Scenarios:
         
           1. Check if the image is in memory > if it is then return that image > If not then check on disk
         
           2. Check if the image is on disk and within the expiration date range > If it is then return the image and store it in memory for later > If not then start the process to download the image
         
           3. Try to fetch the image > Store it on disk and in memory for later
           
           */
        
        if let imageData = cache.object(forkey: item.name as NSString) {
            self.currentState = .success(data: imageData)
            #if DEBUG
            print("📱 Fetching image from the cache: \(item.name)")
            #endif
            return
        }
        
        if let diskCacheItem = FileStorageManager.shared.retrive(with: item.name),
           Date.now < diskCacheItem.evictionDate {
            
            #if DEBUG
            print("🏦 Storing image in memory from disk: \(diskCacheItem.name)")
            #endif
            cache.set(object: diskCacheItem.data as NSData,
                      forKey: diskCacheItem.name as NSString)
            
            self.currentState = .success(data: diskCacheItem.data)
            return
        }
        
        FileStorageManager.shared.remove(with: item.name)
        
        self.currentState = .loading
    
        do {
            let data = try await imageRetriver.fetch(item.url)
            self.currentState = .success(data: data)
            cache.set(object: data as NSData,
                      forKey: item.name as NSString)
            if let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: .now) {
                FileStorageManager.shared.save(.init(name: item.name, data: data, evictionDate: tomorrow))
            }
            #if DEBUG
            print("📱 Caching image: \(item.url)")
            #endif
        } catch {
            self.currentState = .failed(error: error)
        }
    }
}

extension CachedImageManager {
    enum CurrentState {
        case loading
        case failed(error: Error)
        case success(data: Data)
    }
}

extension CachedImageManager.CurrentState: Equatable {
    static func == (lhs: CachedImageManager.CurrentState,
                    rhs: CachedImageManager.CurrentState) -> Bool {
        switch (lhs, rhs) {
        case (.loading, .loading):
            return true
        case (let .failed(lhsError), let .failed(rhsError)):
            return lhsError.localizedDescription == rhsError.localizedDescription
        case (let .success(lhsData), let .success(rhsData)):
            return lhsData == rhsData
        default:
            return false
        }
    }
}
