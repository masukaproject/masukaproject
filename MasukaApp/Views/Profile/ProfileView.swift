//
//  ProfileView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var model: ProjectModel
    
    var body: some View {
        Button(action: {
            model.loggedIn = false
        }) {
            Text("Log out")
                .font(.system(size: 52, weight: .bold))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
