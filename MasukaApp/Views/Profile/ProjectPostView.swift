//
//  ProjectPostView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-09-04.
//

import SwiftUI

struct ProjectPostView: View {
    var body: some View {
        VStack {
            HStack {
                UserIconView(size: 30, image: "uthman")
                
                Text("John Doe")
                    .fontWeight(.medium)
                
                Spacer()
                
            }
            
            Text("Masuka is an app that will allow project collaboration between students")
                .padding(10)
            
            Button(action: {
                
            }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(Color(.systemGray2))
                    Text("View Project")
                    
                }
                .frame(height: 30)
            }
            .padding(.horizontal, 50)
            
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 1, x: -1, y: 1)
        .padding()
    }
}

struct ProjectPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectPostView()
    }
}
