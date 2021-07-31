//
//  LargeButton.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-07-31.
//

import SwiftUI

struct LargeButton: View {
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color("DarkBrown"))
                .shadow(color: .black.opacity(0.5), radius: 10, x: -5, y: 5)
            Text(text)
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .medium))
        }
        .frame(width: 314, height: 70)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeButton(text: "Login")
    }
}
