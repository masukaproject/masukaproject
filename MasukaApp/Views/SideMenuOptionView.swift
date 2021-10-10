//
//  SideMenuOptionView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-10-10.
//

import SwiftUI

struct SideMenuOptionView: View {
    var option: SideMenuOptions
    var isCurrent: Bool
    
    var body: some View {
        HStack {
            Image(systemName: option.imageName)
                .resizable()
                .frame(width: 25, height: 25)
                .padding()
            
            Text(option.title)
                .font(.system(size: 25))
                .fontWeight(isCurrent ? .bold : .regular)
        }
//        .background(isCurrent ?  : .clear)
//        .animation(.spring(response: 0.1))
//        .cornerRadius(25)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(option: .home, isCurrent: true)
    }
}
