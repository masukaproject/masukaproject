//
//  MasukaAppApp.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

@main
struct MasukaApp: App {
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(ProjectModel())
        }
    }
}
