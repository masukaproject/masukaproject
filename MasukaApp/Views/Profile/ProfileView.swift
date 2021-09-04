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
        
            
            ScrollView {
                LazyVStack {
                    UserHeaderView()
                    
                    
                    HStack {
                        UserIconView(size: 40, image: "uthman")
                        
                        
                        Button(action: {
                            
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .foregroundColor(Color(.systemGray4))
                                Text("Create Project")
                            }
                            .frame(height: 30)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 1, x: -1, y: 1)
                    .padding(.top)
                    
                    
                    
                    ForEach(1..<5) { _ in
                        ProjectPostView()
                    }
                    
                }
            }
            .ignoresSafeArea()
            .background(Color("Beige"))
        
        
    }
    
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
