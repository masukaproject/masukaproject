//
//  StartView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-08-02.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var model: ProjectModel
    
    var body: some View {
        if model.loggedIn {
            TabsView()
        }
        else {
            LoginAndSignupView()
        }
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
