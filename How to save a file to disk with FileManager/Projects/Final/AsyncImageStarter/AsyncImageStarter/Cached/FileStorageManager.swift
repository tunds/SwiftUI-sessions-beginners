//
//  FileStorageManager.swift
//  AsyncImageStarter
//
//  Created by Tunde Adegoroye on 07/05/2022.
//

import Foundation

final class FileStorageManager {
    
    static let shared = FileStorageManager()
    private let fileManager =  FileManager.default
    private var cacheFolderURL: URL? {
          fileManager.urls(
              for: .cachesDirectory,
              in: .userDomainMask
          ).first
      }
    
    private init() {}
    
    func remove(with fileName: String) {
        
        if let cacheFile = cacheFolderURL?.appendingPathComponent(fileName + ".cache") ,
           fileManager.fileExists(atPath: cacheFile.path) {
            
            do {
                try fileManager.removeItem(at: cacheFile)
            } catch {
                #if DEBUG
                print(error)
                #endif
            }
        }
    }
    
    func retrive(with fileName: String) -> Item? {
        
        guard let cacheFolder = cacheFolderURL else { return nil }

        let fileURL = cacheFolder.appendingPathComponent(fileName + ".cache")

        guard let data = try? Data(contentsOf: fileURL),
              let item = try? JSONDecoder().decode(Item.self, from: data) else {
            #if DEBUG
            print("🥴 Failed to get file \(fileName) from disk")
            #endif
            return nil
        }
        
        #if DEBUG
         print("🥳 Succesfully got file \(fileName) from disk")
         #endif
        
        return item
    }
    
    func save(_ item: Item) {
        
        guard let cacheFolder = cacheFolderURL else { return }
        
        let fileURL = cacheFolder.appendingPathComponent(item.name + ".cache")

       #if DEBUG
       print("⚙️ Creating path for file > \(fileURL.absoluteString)")
       #endif
        
        do {

            let data = try JSONEncoder().encode(item)
            try data.write(to: fileURL)
            #if DEBUG
            print("💾 Saved item to disk with name \(item.name)")
            #endif
        } catch {
            #if DEBUG
            print(error)
            #endif
        }

    }
}

extension FileStorageManager {
    struct Item: Codable {
        let name: String
        let data: Data
        let evictionDate: Date
    }
}
