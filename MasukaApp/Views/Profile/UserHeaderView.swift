//
//  UserHeaderView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-09-04.
//

import SwiftUI

struct UserHeaderView: View {
    var body: some View {
        VStack {
            Image("toronto")
                .resizable()
                .scaledToFill()
                .frame(width: Constants.screenWidth - 80)
                .cornerRadius(10)
            
            
            
            HStack (alignment: .bottom) {
                
                UserIconView(size: 100, image: "uthman")
                
                
                VStack (alignment: .leading) {
                    Text("John Doe")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("University of Toronto")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical)
            }
            .padding(.top, -45)
            .padding(.leading, -60)
            .padding(.bottom, 25)
        }
        .frame(width: Constants.screenWidth)
        .background(
            ZStack {
                Color.white
                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.7), Color.white]), startPoint: .top, endPoint: UnitPoint(x: 0.5, y: 0.6))
                .shadow(radius: 1, x: 0, y: 1)
            }
        )
    }
}

struct UserHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        UserHeaderView()
    }
}
