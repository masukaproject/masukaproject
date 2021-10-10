//
//  SideMenuOptions.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-10-10.
//

import Foundation

enum SideMenuOptions : CaseIterable {
    case home
    case search
    case myProjects
    case savedProjects
    case profile
    case settings
    case signout
    
    var title: String {
        switch self {
        case .home:             return "Home"
        case .search:           return "Search"
        case .myProjects:       return "My Projects"
        case .savedProjects:    return "Saved Projects"
        case .profile:          return "Profile"
        case .settings:         return "Settings"
        case .signout:          return "Sign Out"
        }
    }
    
    var imageName: String {
        switch self {
        case .home:             return "house"
        case .search:           return "magnifyingglass"
        case .myProjects:       return "cart"
        case .savedProjects:    return "bookmark"
        case .profile:          return "person"
        case .settings:         return "gearshape"
        case .signout:          return "arrow.down.left.circle"
        }
    }
}
