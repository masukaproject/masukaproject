//
//  CapsuleTab.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-08-03.
//

import SwiftUI

struct CapsuleTab: View {
    var text: String
    @Binding var selection: LoginOrSignUp
    var current: LoginOrSignUp
    
    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(self.selection == current ? Color.white: Color.clear)
                .frame(width: self.selection == current ? 225 : 140, height: 50)
            
            Text(text)
                .foregroundColor(self.selection == current ? .black: .white)
                .fontWeight(.bold)
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                self.selection = current
            }
        }
    }
}

struct CapsuleTab_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleTab(text: "Login", selection: .constant(.login), current: .login)
    }
}
