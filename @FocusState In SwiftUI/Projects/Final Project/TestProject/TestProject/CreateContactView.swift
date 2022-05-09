//
//  CreateContactView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import SwiftUI

struct CreateContactView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) var presentationMode
    @FocusState private var focusedInput: Field?
    
    @StateObject private var vm = CreateContactViewModel()
    let action: (_ contact: NewContact) -> Void
    
    var body: some View {
        NavigationView {
            Form {
                
                general
                contact
                emergency
                clearAll
            }
            .navigationTitle("Add Contact")
            .toolbar {
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") {
                        action(vm.newContact)
                        handleDismissal()
                    }
                    .disabled(!vm.isValid)
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel",
                           role: .cancel) {
                        handleDismissal()
                    }
                }
                
                ToolbarItemGroup(placement: .keyboard) {
                    
                    Button(action: dismissKeyboard) {
                        Text("Done")
                    }
                    
                    Spacer()
                    
                    Button(action: previous) {
                        Image(systemName: "chevron.up")

                    }
                    .disabled(hasReachedStart)
                    
                    Button(action: next) {
                        Image(systemName: "chevron.down")

                    }
                    .disabled(hasReachedEnd)

                }

                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                   focusedInput = .prefix
                }
            }
        }
    }
}

struct CreateContactView_Previews: PreviewProvider {
    static var previews: some View {
        CreateContactView { _ in }
    }
}

private extension CreateContactView {
    enum Field: Int, Hashable, CaseIterable {
        case prefix
        case firstName
        case lastName
        case company
        case phoneNumber
        case email
        case emergencyNotes
    }
}

private extension CreateContactView {
    
    var hasReachedEnd: Bool {
       focusedInput == Field.allCases.last
    }
    
    var hasReachedStart: Bool {
        focusedInput == Field.allCases.first
    }
    
    func dismissKeyboard() {
       focusedInput = nil
    }
    
    func next() {
        
        guard let currentInput = focusedInput,
              let lastIndex = Field.allCases.last?.rawValue else { return }
    
        let index = min(currentInput.rawValue + 1, lastIndex)
       focusedInput = Field(rawValue: index)
    }
    
    func previous() {
        
        guard let currentInput = focusedInput,
              let firstIndex = Field.allCases.first?.rawValue else { return }
    
        let index = max(currentInput.rawValue - 1, firstIndex)
        focusedInput = Field(rawValue: index)
    }
}

private extension CreateContactView {
    
    var general: some View {
        Section {
            
            TextField("Prefix", text: $vm.newContact.general.prefix)
                .textContentType(.namePrefix)
                .focused($focusedInput, equals: .prefix)
            
            TextField("First Name", text: $vm.newContact.general.firstName)
                .textContentType(.name)
                .keyboardType(.namePhonePad)
                .focused($focusedInput, equals: .firstName)
            
            TextField("Last Name", text: $vm.newContact.general.lastName)
                .textContentType(.familyName)
                .keyboardType(.namePhonePad)
                .focused($focusedInput, equals: .lastName)
            
            Picker("Gender", selection: $vm.newContact.general.gender) {
                ForEach(NewContact.General.Gender.allCases) { item in
                    Text(item.rawValue.uppercased())
                }
            }
            
            TextField("(Optional) Company", text: $vm.newContact.general.company)
                .textContentType(.organizationName)
                .focused($focusedInput, equals: .company)
            
        } header: {
            Text("General")
        } footer: {
            Text("Please enter in any information about the person")
        }
        .headerProminence(.increased)
    }
    
    var contact: some View {
        
        Section {
            
            TextField("Phone number", text: $vm.newContact.contactInfo.phoneNumber)
                .textContentType(.telephoneNumber)
                .keyboardType(.phonePad)
                .focused($focusedInput, equals: .phoneNumber)
            
            TextField("(Optional) Email", text: $vm.newContact.contactInfo.email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .focused($focusedInput, equals: .email)
        }
    }
    
    
    var emergency: some View {
        
        Section {
            
            Toggle("Emergency Contact", isOn: $vm.newContact.emergency.isEmergency)
            
            TextEditor(text: $vm.newContact.emergency.notes)
                .focused($focusedInput, equals: .emergencyNotes)
            
        } footer: {
            Text("Please enter in any information about this emergency contact that someone else should know")
        }
    }
    
    var clearAll: some View {
            Button(role: .destructive) {
                withAnimation {
                    vm.clearAll()
                }
            } label: {
                Text("Clear All")
            }
    }
}

private extension CreateContactView {
    
    func handleDismissal() {
        if #available(iOS 15, *) {
            dismiss()
        } else {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
