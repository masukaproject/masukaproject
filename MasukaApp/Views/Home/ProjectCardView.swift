//
//  ProjectCardView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-07-26.
//

import SwiftUI

struct ProjectCardView: View {
    var body: some View {
        ZStack (alignment: .top) {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.5), radius: 10, y: 5)
                .padding(.top, 50)
            Circle()
                .frame(width: 140, height: 140)
                .foregroundColor(.orange)
            VStack {
                Spacer()
                Text("SemTrack")
                    .fontWeight(.semibold)
                    .font(.title)
                Spacer()
                Text("Web Application")
                    .fontWeight(.medium)
                    .font(.title3)
            }
            .padding(.bottom, 30)
            .padding(.top, 75)
        }
        .frame(width: 165, height: 300)
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView()
    }
}
