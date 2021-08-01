//
//  LoginView.swift
//  MasukaApp
//
//  Created by Sana Sarin on 2021-07-25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var username = ""
    @State var password = ""
    @State var secondPassword = ""
    @State var showPassword = false
    @State var showSecondPassword = false
    
    @State var selection: LoginOrSignUp = .login
    
    var body: some View {
        NavigationView {
            ZStack{
                
                // MARK: - Background Colour
                Color("Beige")
                
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
                            .foregroundColor(.black)
                            .font(.system(size: 64, weight: .medium))
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
                    .overlay(
                        Capsule()   // outline around tabs
                            .stroke(Color("DarkBrown"), style: StrokeStyle(lineWidth: 0.5)))
                    .clipShape(Capsule())
                    .padding(.top, 25)
                    .padding(.horizontal)
                    .onChange(of: selection) { _ in
                        // reset info when user changes from login to signup and vice versa
                        resetVariables()
                    }
                    
                    
                    // MARK: - Email
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(.lightGray))
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("DarkBrown"), style: StrokeStyle(lineWidth: 0.5))
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
                    
                    
                    // MARK: - Username
                    if selection == .signup {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color(.lightGray))
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("DarkBrown"), style: StrokeStyle(lineWidth: 0.5))
                            HStack(spacing: 15) {
                                Image(systemName: "person")
                                    .foregroundColor(.black.opacity(0.9))
                                TextField("Username", text: self.$username)
                                    .disableAutocorrection(true)
                                    .autocapitalization(.none)
                            }
                            .padding()
                        }
                        .frame(width: 370, height: 60)
                    }
                    
                    // MARK: - Password
                    PasswordBox(password: $password, showPassword: $showPassword, defaultText: "Password")
                    
                    
                    // MARK: - Second Password
                    if selection == .signup {
                        PasswordBox(password: $secondPassword, showPassword: $showSecondPassword, defaultText: "Re-Enter Password")
                    }
                    
                    
                    // MARK: - Forgot Password
                    if selection == .login {
                        NavigationLink(destination: ForgotPasswordView()) {
                            Text("Forgot Password?")
                        }
                    }
                    
                    
                    // MARK: - Login Button
                    NavigationLink(destination: TabsView()) {
                        LargeButton(text: selection == .login ? "Login" : "Continue")
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
            self.selection = .login
        }
    }
    
    func resetVariables() {
        self.email = ""
        self.username = ""
        self.password = ""
        self.secondPassword = ""
        self.showPassword = false
        self.showSecondPassword = false
    }
}

enum LoginOrSignUp {
    case login
    case signup
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewDisplayName("Light Mode")
//        LoginView()
//            .preferredColorScheme(.dark)
//            .previewDisplayName("Dark Mode")
    }
}
