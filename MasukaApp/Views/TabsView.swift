//
//  TabsView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-07-25.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            
            Text("Home Page Here")
            .tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            }
            
            Text("Search Page Here")
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
            
            Text("Settings Page Here")
                .tabItem {
                    VStack {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                }
            
            Text("Profile Page Here")
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
