//
//  MasukaAppApp.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI
import Firebase

@main
struct MasukaApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(ProjectModel())
        }
    }
}
