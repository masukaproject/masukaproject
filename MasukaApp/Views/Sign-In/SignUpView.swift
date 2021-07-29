//
//  RegisterView.swift
//  MasukaApp
//
//  Created by Sana Sarin on 2021-07-25.
//

import SwiftUI

struct SignUpView: View {
        @State var email = ""
        @State var username = ""
        @State var confirmPass = ""
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
                            .foregroundColor(self.index == 1 ? .black: .white)
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .frame(width: (UIScreen.main.bounds.width - 50)/2)
                    }.background(self.index == 1 ? Color.white: Color.clear)
                    .clipShape(Capsule())
                    Button(action: {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                        self.index = 0
                    }
                    }) {
                        Text("Sign-Up")
                            .foregroundColor(self.index == 0 ? .black: .white)
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .frame(width: (UIScreen.main.bounds.width - 50)/2)
                    }.background(self.index == 0 ? Color.white: Color.clear)
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
                
//                HStack(spacing: 15) {
//                    Image(systemName: "envelope")
//                        .foregroundColor(.black.opacity(0.9))
//                    TextField("Username", text: self.$email)
//                }
//                .padding(.all, 20)
//                .background(Color.gray)
//                .cornerRadius(8)
//                .padding(.horizontal, 20)
                
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
                
                Divider()
                
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                        .foregroundColor(.black.opacity(0.9))
                    SecureField("Confirm Password", text: self.$password)
                    Image(systemName: "eye")
                        .foregroundColor(.black.opacity(0.5))
            
                }
                .padding(.all, 20)
                .background(Color.gray)
                .cornerRadius(8)
                .padding(.horizontal, 20)

                Button(action: {}) {
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .medium))
                }.frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(Color.gray.opacity(0.7))
                .cornerRadius(20)
                .padding(.horizontal, 20)
                .offset(y: -2)
                .shadow(radius: 15)
                Spacer()
                
            }.background(Image("globe idea").opacity(0.3)
                            .frame(width: 400, height: 180)
                            .aspectRatio(contentMode: .fill))
            .edgesIgnoringSafeArea(.all)
                
            }
        }


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
}
