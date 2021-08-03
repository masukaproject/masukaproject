//
//  SearchListView.swift
//  MasukaApp
//
//  Created by Kyle Hobeck on 2021-08-03.
//

import SwiftUI

struct SearchListView: View {
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.863, green: 0.863, blue: 0.875))
                .cornerRadius(53)
            VStack {
                Text("Found 25 Results")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.all, 50.0)
                    
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: gridItems) {
                        ForEach(0..<4) { _ in
                            NavigationLink(
                                destination: Text("Destination")) {
                                ProjectCardView()
                            }
                        }
                    }
                }
            .padding(.horizontal, 25)
                .padding(.vertical, -10)
            }
        }
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}

