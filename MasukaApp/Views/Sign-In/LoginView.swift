//
//  LoginView.swift
//  MasukaApp
//
//  Created by Sana Sarin on 2021-07-25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var index = 0
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: .init(colors:
                                            [Color("Color1")]),
                           startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        VStack(spacing: 15) {
            Spacer()
            
            Text("Masuka")
                .font(.system(size: 64, weight: .bold))
                .foregroundColor(.black)
            
            HStack{
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                    self.index = 0
                }
                }) {
                    Text("Login")
                        .foregroundColor(self.index == 0 ? .black: .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50)/2)
                }.background(self.index == 0 ? Color.white: Color.clear)
                .clipShape(Capsule())
                
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                    self.index = 0
                }
                }) {
                    Text("Sign-Up")
                        .foregroundColor(self.index == 1 ? .black: .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50)/2)
                }.background(self.index == 1 ? Color.white: Color.clear)
                .clipShape(Capsule())
                
                
            }.background(Color.black.opacity(0.3))
            .clipShape(Capsule())
            .padding(.top, 25)
 
            
            HStack(spacing: 15) {
                Image(systemName: "envelope")
                    .foregroundColor(.black.opacity(0.9))
                TextField("Email", text: self.$email)
            }
            .padding(.all, 20)
            .background(Color.gray)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            Divider()
            
            HStack(spacing: 15) {
                Image(systemName: "lock")
                    .foregroundColor(.black.opacity(0.9))
                SecureField("Password", text: self.$password)
                Image(systemName: "eye")
                    .foregroundColor(.black.opacity(0.5))
            }
            .padding(.all, 20)
            .background(Color.gray)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            Button(action: {
                
            }) {
                Text("Forget Password?").foregroundColor(.black)
            }
            HStack{
                Color.white.opacity(0.7).frame(width: 10, height: 1)
            }
            
            Button(action: {}) {
                Text("Login")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.gray.opacity(0.8))
            .cornerRadius(20)
            .padding(.horizontal, 20)
            Spacer()
            
            
        }.background(Image("globe idea").opacity(0.3)
                        .frame(width: 32, height: 32)
                        .aspectRatio(contentMode: .fit))
        .edgesIgnoringSafeArea(.all)
        
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

