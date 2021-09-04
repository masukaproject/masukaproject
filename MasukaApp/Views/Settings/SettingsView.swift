//
//  SettingsView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var model: ProjectModel
    
    var body: some View {
        Button(action: {
            model.loggedIn = false
        }) {
            Text("LOGOUT")
                .font(.system(size: 50))
                .bold()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
