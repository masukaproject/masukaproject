//
//  SearchView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            VStack{
                SearchBarView()
                    .navigationTitle("Search")
                    .navigationBarHidden(true)
                SearchListView()
    //            SearchOptionsView()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
