//
//  ProjectDetailView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-10-10.
//

import SwiftUI

struct ProjectDetailView: View {
    var body: some View {
        VStack (spacing: 0) {
            Image("uthman")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom)
                .padding(.top, -50)
            
            Text("Title")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            
            Text("Project Type")
                .font(.system(size: 20))
                .fontWeight(.medium)
                .foregroundColor(Color(.systemGray))
                .padding(.bottom)
            
            Text("A spectacular visual website made for students to calculate their GPA. We are a group of 4 and we require two individuals who can help us with backend. Look at the info below and contact if suitable!   Knows C++   Can contribute 3 hours a week   A solid background with CS related concepts     Good communication skills   Lives in toronto for necessary meetups")
                .font(.system(size: 20))
                .foregroundColor(Color(.systemGray))
                .padding()
            
            Button(action: {
                
            }) {
                LargeButton(text: "💬      Contact Now")
            }
                .padding()
        }
        .padding()
        .navigationBarItems(trailing:
                                HStack (spacing: 20) {
            Button(action: {
                
            }) {
                Image(systemName: "bookmark")
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "list.bullet")
            }
        }
        )
    }
}

struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailView()
    }
}
