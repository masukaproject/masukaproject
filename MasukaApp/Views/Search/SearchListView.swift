//
//  SearchListView.swift
//  MasukaApp
//
//  Created by Kyle Hobeck on 2021-08-03.
//

import SwiftUI

struct SearchListView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.863, green: 0.863, blue: 0.875))
                .cornerRadius(53)
            VStack (spacing: 8) {
                Text("Found 25 Results")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                
                ProjectListView()
            }
        }
        .padding(.top)
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}

