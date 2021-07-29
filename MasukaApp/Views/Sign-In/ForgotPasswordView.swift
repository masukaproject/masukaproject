//
//  ForgotPasswordView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-07-25.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        
        VStack {
            
            Text("Password Reset").bold().font(.system(size: 20, weight: .medium))
            
            Text("Forgot Password").bold().font(.system(size: 32, weight: .medium)).offset(y: 150)
            
            Text("Enter your email address or username and we will send you a link to get back to your account.").font(.system(size: 17, weight: .medium)).offset(y: 200).padding(.horizontal, 40).multilineTextAlignment(.center)
        
        Button(action: {}) {
            Text("Continue")
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .medium))
        }.frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color(.sRGB, red: 0.32, green: 0.15, blue: 0.09).opacity(1))
        .cornerRadius(20)
        .padding(.horizontal, 40)
        .offset(y: 600)
        Spacer()
            
        }
   }
    
}



struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
