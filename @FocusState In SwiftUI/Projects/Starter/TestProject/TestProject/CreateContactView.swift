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
    
    var general: some View {
        Section {
            
            TextField("Prefix", text: $vm.newContact.general.prefix)
                .textContentType(.namePrefix)
            
            TextField("First Name", text: $vm.newContact.general.firstName)
                .textContentType(.name)
                .keyboardType(.namePhonePad)
            
            TextField("Last Name", text: $vm.newContact.general.lastName)
                .textContentType(.familyName)
                .keyboardType(.namePhonePad)
            
            Picker("Gender", selection: $vm.newContact.general.gender) {
                ForEach(NewContact.General.Gender.allCases) { item in
                    Text(item.rawValue.uppercased())
                }
            }
            
            TextField("(Optional) Company", text: $vm.newContact.general.company)
                .textContentType(.organizationName)
            
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
            
            TextField("(Optional) Email", text: $vm.newContact.contactInfo.email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
        }
    }
    
    
    var emergency: some View {
        
        Section {
            
            Toggle("Emergency Contact", isOn: $vm.newContact.emergency.isEmergency)
            
            TextEditor(text: $vm.newContact.emergency.notes)
            
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
