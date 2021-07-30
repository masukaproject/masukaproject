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
    @State var secondPassword = ""
    @State var selection: LoginOrSignUp = .login
    
    var body: some View {
        NavigationView {
            ZStack{
                
                // MARK: - Background Colour
                LinearGradient(gradient: .init(colors:
                                                [Color("Color1"), Color.blue.opacity(0.1)]),
                               startPoint: .topLeading, endPoint: .bottomTrailing)
                
                VStack(spacing: 15) {
                    
                    // MARK: - Main Image & Title
                    ZStack (alignment: .bottom) {
                        Image("globe idea")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.1)
                            .frame(width: Constants.screenWidth, height: selection == .login ? Constants.screenHeight*2/5 : Constants.screenHeight/3)
                            .clipped()
                        
                        Text("Masuka")
                            .font(.system(size: 64, weight: .medium))
                            .font(.largeTitle)
                    }
                    
                    
                    // MARK: - Login & Sign-Up Tabs
                    HStack{
                        
                        // Login Tab
                        ZStack {
                            Capsule()
                                .foregroundColor(self.selection == .login ? Color.white: Color.clear)
                                .frame(width: self.selection == .login ? Constants.screenWidth/2 : Constants.screenWidth/3, height: 50)
                            
                            Text("Login")
                                .foregroundColor(self.selection == .login ? .black: .white)
                                .fontWeight(.bold)
                        }
                        .onTapGesture {
                            withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                                self.selection = .login
                            }
                        }
                        
                        // Sign-Up Tab
                        ZStack {
                            Capsule()
                                .foregroundColor(self.selection == .signup ? Color.white: Color.clear)
                                .frame(width: self.selection == .signup ? Constants.screenWidth/2 : Constants.screenWidth/3, height: 50)

                            Text("Sign-Up")
                                .foregroundColor(self.selection == .signup ? .black: .white)
                                .fontWeight(.bold)
                        }
                        .onTapGesture {
                            withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                                self.selection = .signup
                            }
                        }
                        
                    }
                    .background(Color.black.opacity(0.3))
                    .clipShape(Capsule())
                    .padding(.top, 25)
                    .padding(.horizontal)
                    
                    
                    // MARK: - Email
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(.systemGray5))
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, style: StrokeStyle(lineWidth: 0.5))
                        HStack(spacing: 15) {
                            Image(systemName: "envelope")
                                .foregroundColor(.black.opacity(0.9))
                            TextField("Email", text: self.$email)
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                                .keyboardType(.emailAddress)
                        }
                        .padding()
                    }
                    .frame(width: 370, height: 60)
                    
                    
                    // MARK: - Password
                    PasswordBox(defaultText: "Password", password: $password)
                    
                    
                    // MARK: - Second Password
                    if selection == .signup {
                        PasswordBox(defaultText: "Re-Enter Password", password: $secondPassword)
                    }
                    
                    
                    // MARK: - Forget Password
                    if selection == .login {
                        NavigationLink(destination: ForgotPasswordView()) {
                            Text("Forget Password?")
                        }
                    }
                    
                    
                    // MARK: - Login Button
                    NavigationLink(destination: HomeView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.white)
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, style: StrokeStyle(lineWidth: 0.5))
                            Text(selection == .login ? "Login" : "Continue")
                                .foregroundColor(.black)
                                .font(.system(size: 24, weight: .semibold))
                        }
                        .frame(width: 300, height: 65)
                    }
                    .padding(.top, 60)
                }
                .ignoresSafeArea()
            }
            .ignoresSafeArea()
        }
        .navigationViewStyle(StackNavigationViewStyle()) // useful for iPad or landscape view
        .onAppear {
            resetVariables()
        }
    }
    
    func resetVariables() {
        self.email = ""
        self.password = ""
        self.secondPassword = ""
        self.selection = .login
    }
}

enum LoginOrSignUp {
    case login
    case signup
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

