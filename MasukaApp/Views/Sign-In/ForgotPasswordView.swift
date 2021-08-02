//
//  ForgotPasswordView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Binding var isInView: Bool
    
    @State private var email = ""
    @State private var username = ""
    
    let backArrow = "arrowshape.turn.up.left.fill"
    let lockIcon = "lock.circle.fill"
    
    var body: some View {
        
        VStack (spacing: 25) {
            
            ZStack {
                Button(action: {
                    isInView = false
                }) {
                    Image(systemName: backArrow)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 35, height: 22)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                
                Text("Password Reset")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.top)
            
            Spacer()
                
            Group {
                Image(systemName: lockIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 52, height: 52)
                    .padding(.top, -30)
                
                Text("Forgot Password")
                    .font(.system(size: 38, weight: .bold))
            }
            
//            Spacer()
            
            Text("Enter your email address or username and we will send you a link to get back to your account.")
                .multilineTextAlignment(.center)
                .padding(40)
            
//            Spacer()
            
            Group {
                UserInputField(input: $email, title: "Email Address", type: .email)
                
                UserInputField(input: $username, title: "Username", type: .other)
            }
            
            Spacer()
            
            LargeButton(text: "Continue")
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
    
}



struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(isInView: .constant(true))
    }
}
