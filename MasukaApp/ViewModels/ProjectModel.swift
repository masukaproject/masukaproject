//
//  ProjectModel.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-08-01.
//

import Foundation
import Firebase

class ProjectModel: ObservableObject {
    
    // User Info
    @Published var user = User()
    @Published var loggedIn = false
    
    // Projects Info
    @Published var projects = [Project]()
    
    @Published var currentView: SideMenuOptions = .home
    
    func checkLogin() {
        self.loggedIn = Auth.auth().currentUser == nil ? false : true
    }
}
