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
        
        VStack {
            ZStack {
                VStack {
                    Image("toronto2")
                        .resizable()
                        .frame(width: Constants.screenWidth, height: 250)
                        .scaledToFit()
                        .ignoresSafeArea()
                                            
                    
                    HStack {
                        Spacer()
                        Image("uthman")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 110.0)
                            .cornerRadius(10000000)
                        VStack{
                            Text("John Doe")
                                .padding(.top, 30.0)
                            Text("I like cats hhhahaah")
                                .font(.caption)
                        }
                        Spacer()
                    }
                    .padding(.top, -50.0)
                    .frame(height: 50.0)
                    
                    
                }
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button(action: {
                model.loggedIn = false
            }) {
                Text("Log out")
                    .font(.system(size: 52, weight: .bold))
            }
        }
        
    }
    
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
