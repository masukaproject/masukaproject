//
//  ProjectListView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-26.
//

import SwiftUI

struct ProjectListView: View {
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: gridItems) {
                ForEach(0..<10) { _ in
                    NavigationLink(
                        destination: ProjectDetailView()) {
                        ProjectCardView()
                    }
                }
            }
        }
        .padding(.horizontal, 25)
    }
}

struct ProjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListView()
    }
}
