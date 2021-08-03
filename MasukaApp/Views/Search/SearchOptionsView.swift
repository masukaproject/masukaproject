//
//  SearchOptions.swift
//  MasukaApp
//
//  Created by Kyle Hobeck on 2021-08-03.
//
import SwiftUI

struct SearchOptionsView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.863, green: 0.863, blue: 0.875))
                .frame(width: 400, height: 56)
            HStack {
                Spacer()
                Image("home").imageScale(.small)
                Spacer()
                Image("search").imageScale(.small)
                Spacer()
                Image("user").imageScale(.small)
                Spacer()
                Image("Cog").imageScale(.small)
                Spacer()
            }
        }
    }
}

struct SearchOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchOptionsView()
    }
}

