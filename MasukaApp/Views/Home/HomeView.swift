//
//  HomeView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ProjectListView()
                .navigationBarTitle("Suggested Projects")
                .navigationBarItems(leading:
                                        Button(action: {
                                            
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
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
