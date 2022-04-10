//
//  LoginFormManager.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import Foundation


final class LoginFormManager: FormManagerImpl {
   
    @Published var sections: [FormSection] = []
    @Published var formState: FormState = .na
    
    func load() {
        
        // MARK: - General Section
        
        let usernameFormItem = FormItem(key: .username,
                                         kind: .text(config: .init(title: "Username",
                                                                   keyboardInputType: .emailAddress,
                                                                   textContentType: .username)),
                                         stringVal: "")
        
        let passwordFormItem = FormItem(key: .password,
                                          kind: .secureText(config: .init(title: "Password",
                                                                          keyboardInputType: .default,
                                                                    textContentType: .password)),
                                          stringVal: "")
        
        let submitFormItem = FormItem(key: .submit,
                                      kind: .button(config: .init(title: "Submit",
                                                                                triggerAction: .submit),
                                                                    action: { [weak self] action in
            self?.validate()
        }),
                                      stringVal: "")
        
        

        let loginSection = FormSection(key: .login,
                                             header: "Login Details",
                                             footer: "Please enter in your login details",
                                             items: [
                                                usernameFormItem,
                                                passwordFormItem,
                                                submitFormItem
                                                    ])
        
        self.sections = [
            loginSection
        ]
    }
}

private extension LoginFormManager {
    
    func validate() {
        guard let generalSection = sections
            .first(where: { $0.key == .login })?
            .items.lazy.filter({ $0.key != .submit }) else {
            return
        }
        
        let formIsEmpty = generalSection.first(where: { $0.stringVal.isEmpty }) == nil
        self.formState = formIsEmpty ? .valid : .invalid
    }
}
