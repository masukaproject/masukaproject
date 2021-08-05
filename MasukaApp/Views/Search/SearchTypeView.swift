//
//  SearchType.swift
//  MasukaApp
//
//  Created by Kyle Hobeck on 2021-08-03.
//

import SwiftUI

struct SearchTypeView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.863, green: 0.863, blue: 0.875))
                .frame(width: 353, height: 58)
                .cornerRadius(30)
            HStack {
                Image("magnifying_glass").imageScale(.small)
                    .padding(.leading, 5)
                Spacer()
                TextField("Search Projects", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                
            }
            .padding(.horizontal, 40.0)
        }
    }
}

struct SearchTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTypeView()
    }
}


