//
//  SearchView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack{
            SearchTypeView()
            SearchListView().padding(.bottom)
            SearchOptionsView()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
