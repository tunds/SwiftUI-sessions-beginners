//
//  FormManager.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import Foundation

enum FormState {
    case na
    case valid
    case invalid
}

protocol FormManagerImpl: ObservableObject {
    var sections: [FormSection] { get set }
    var formState: FormState { get set }
    func load()
}

final class FormManager: FormManagerImpl {
   
    @Published var sections: [FormSection] = []
    @Published var formState: FormState = .na
    
    func load() {
        
        // MARK: - General Section
        
        let prefixFormItem = FormItem(key: .prefix,
                                      kind: .text(config: .init(title: "Prefix",
                                                                keyboardInputType: .default,
                                                                textContentType: .namePrefix)),
                                      stringVal: "")
        
        let firstNameFormItem = FormItem(key: .firstName,
                                         kind: .text(config: .init(title: "First Name",
                                                                   keyboardInputType: .namePhonePad,
                                                                   textContentType: .name)),
                                         stringVal: "")
        
        let secondNameFormItem = FormItem(key: .lastName,
                                          kind: .text(config: .init(title: "Last Name",
                                                                    keyboardInputType: .namePhonePad,
                                                                    textContentType: .name)),
                                          stringVal: "")

        let generalInfoSection = FormSection(key: .general,
                                             header: "General",
                                             footer: "Please enter the relevant info about yoursel",
                                             items: [
                                                prefixFormItem,
                                                firstNameFormItem,
                                                secondNameFormItem
                                                    ])
        
        // MARK: - Submit Section
        
        let submitFormItem = FormItem(key: .submit,
                                      kind: .button(config: .init(title: "Submit",
                                                                                triggerAction: .submit),
                                                                    action: { [weak self] action in
            self?.validate()
        }),
                                      stringVal: "")
        
        let submitSection = FormSection(key: .submission,
                                        header: nil,
                                        footer: nil,
                                        items: [
                                            
                                            submitFormItem
                                        
                                        ])
        
        // MARK: - Marketing Section
        
        
        let marketingToggleItem = FormItem(key: .sendMarketing,
                                           kind: .toggle(config: .init(title: "Do you want to recieve marketing?")),
                                           boolVal: true)
        
        let marketingSection = FormSection(key: .marketing,
                                           header: "Marketing Preferences",
                                           footer: nil,
                                           items: [
                                            marketingToggleItem
                                           ])
        
        self.sections = [
            
            generalInfoSection,
            marketingSection,
            submitSection
        
        ]
    }
}

private extension FormManager {
    
    func validate() {
        guard let generalSection = sections.first(where: { $0.key == .general }) else {
            return
        }
        
        let formIsEmpty = generalSection.items.first(where: { $0.stringVal.isEmpty }) == nil
        self.formState = formIsEmpty ? .valid : .invalid
    }
}
