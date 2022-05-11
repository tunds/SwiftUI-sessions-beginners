//
//  Models.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import UIKit

struct FormSection: Identifiable {
    let id = UUID()
    let key: Key
    let header: String?
    let footer: String?
    var items: [FormItem]
}

struct FormItem: Identifiable {
    let id = UUID()
    let key: Key
    let kind: Kind
    var stringVal: String = ""
    var boolVal: Bool = false
}

extension FormItem {
    enum Kind {
        case text(config: TextConfig)
        case button(config: ButtonConfig, action: (ButtonConfig.Action) -> Void)
        case toggle(config: ToggleConfig)
        case secureText(config: TextConfig)
    }
}

extension FormItem.Kind {
    struct TextConfig {
        let title: String
        let keyboardInputType: UIKeyboardType
        let textContentType: UITextContentType
    }
    struct ButtonConfig {
        let title: String
        let triggerAction: Action
    }
    struct ToggleConfig {
        let title: String
    }
}

extension FormSection {
    enum Key: String {
        case general
        case submission
        case marketing
        case login
    }
}

extension FormItem {
    enum Key: String {
        case prefix
        case firstName
        case lastName
        case submit
        case sendMarketing
        case username
        case password
    }
}

extension FormItem.Kind.ButtonConfig {
    enum Action {
        case submit
    }
}

