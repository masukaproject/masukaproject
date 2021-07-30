//
//  ForgotPasswordView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        
        VStack(spacing: 5) {
            
            Text("Password Reset").bold().font(.system(size: 20, weight: .medium))
            
            Image(systemName: "lock.circle.fill")
                
                .foregroundColor(.black.opacity(1)).padding(.all, 20.0)
                .cornerRadius(8).font(.system(size: 60)).offset(y: 30)
            
            Image(systemName: "arrowshape.turn.up.left.fill")
              .foregroundColor(.black.opacity(1))
                .cornerRadius(8).font(.system(size: 20)).offset(x: -175, y: -142)
        
            Text("Forgot Password").bold().font(.system(size: 32, weight: .medium)).offset(y: 20)
            
            
            Text("Enter your email address or username and we will send you a link to get back to your account.").font(.system(size: 17, weight: .light)).offset(y: 35).padding(.horizontal, 40).multilineTextAlignment(.center).padding()
            
        Spacer()
            
            Text("Email Address").font(.system(size: 15, weight: .light)).multilineTextAlignment(.leading).offset(x: -125, y: -100).padding(.horizontal, 35).padding()
            
        
            Text("Username").font(.system(size: 15, weight: .light)).multilineTextAlignment(.leading).offset(x: -138, y: -60).padding(.horizontal, 35).padding()
        Spacer()
        

        Button(action: {}) {
            Text("Continue")
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .medium))
        }.frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color(red: 0.12549019607843137, green: 0.058823529411764705, blue: 0.03529411764705882).opacity(1))
        .cornerRadius(20)
        .padding(.horizontal, 40)
        .offset(y: -50)
        
        
            
            
        }
   }
    
}



struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
