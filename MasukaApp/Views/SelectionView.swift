//
//  SelectionView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-10-10.
//

import SwiftUI

struct SelectionView: View {
    @EnvironmentObject var model: ProjectModel
    @State private var sideMenuOpened = false
    
    var body: some View {
        ZStack {
            if sideMenuOpened {
                SideMenuView(sideMenuOpened: $sideMenuOpened)
            }
            
            NavigationView {
                Group {
                    switch model.currentView {
                    case .home:
                        HomeView()
                    case .search:
                        SearchView()
                    case .myProjects:
                        Text("My Projects")
                    case .savedProjects:
                        Text("Saved Projects")
                    case .profile:
                        ProfileView()
                    case .settings:
                        SettingsView()
                    case .signout:
                        Text("Sign Out")
                    }
                }
                .navigationBarTitle(model.currentView.title)
                .navigationBarItems(leading:
                                        
                    // Side Menu Logo
                    Button(action: {
                        withAnimation(.spring()) {
                            sideMenuOpened = true
                        }
                    }) {
                        Image(systemName: "text.alignleft")
                            .resizable()
                            .scaledToFill()
                            .padding(.top, 5)
                            .frame(width: 30, height: 22)
                            .clipped()
                    }
                )
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .offset(x: sideMenuOpened ? 300 : 0)
            .padding(.vertical, sideMenuOpened ? 50 : 0)
            .blur(radius: sideMenuOpened ? 3 : 0)
            .shadow(radius: sideMenuOpened ? 15 : 0)
            .scaleEffect(sideMenuOpened ? 0.7 : 1)
            .overlay(
                Rectangle()
                    .foregroundColor(Color(.black).opacity(0.01))
                    .animation(.none)
                    .frame(maxWidth: sideMenuOpened ? .infinity : 0, maxHeight: sideMenuOpened ? .infinity : 0)
                    .offset(x: sideMenuOpened ? 300 : 0)
                    .padding(.vertical, sideMenuOpened ? 50 : 0)
                    .scaleEffect(sideMenuOpened ? 0.7 : 1)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            sideMenuOpened = false
                        }
                    }
            )
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
