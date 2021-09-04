//
//  UserIconView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-09-03.
//

import SwiftUI

struct UserIconView: View {
    var size: CGFloat
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .clipShape(Circle())
            .shadow(radius: 7)
    }
}

struct UserIconView_Previews: PreviewProvider {
    static var previews: some View {
        UserIconView(size: 100, image: "uthman")
    }
}
