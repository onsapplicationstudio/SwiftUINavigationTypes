//
//  PresentationStyle.swift
//  ONSNavigating
//
//  Created by ONS on 14/09/25.
//

import Foundation

enum PresentationStyle: CaseIterable {
    case pushNavigationLink
    case pushNavigationPath
    case modal
    case fullScreen
    case popup
    
    var title: String {
        switch self {
        case .pushNavigationLink:
            return "Push Navigation Link"
        case .pushNavigationPath:
            return "Push Navigation Path"
        case .modal:
            return "Modal"
        case .fullScreen:
            return "Full Screen"
        case .popup:
            return "Popup"
        }
    }
}
