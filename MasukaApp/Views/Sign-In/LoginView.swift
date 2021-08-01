//
//  LoginView.swift
//  MasukaApp
//
//  Created by Sana Sarin on 2021-07-25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var secondPassword = ""
    @State private var showPassword = false
    @State private var showSecondPassword = false
    @State private var errorMessage = ""
    @State private var checked = false
    
    @State private var selection: LoginOrSignUp = .login
    
    var body: some View {
        NavigationView {
            ZStack{
                
                // MARK: - Background Colour
                Color("Beige")
                
                VStack(spacing: 10) {
                    
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
                    .onChange(of: selection) { _ in
                        // reset info when user changes from login to signup and vice versa
                        resetVariables()
                    }
                    .padding(.bottom, 10)
                    
                    
                    // MARK: - Email
                    if selection == .signup {
                        UserInputField(input: $email, title: "Email Address", type: .email)
                    }
                    
                    
                    // MARK: - Username
                    UserInputField(input: $username, title: "Username", type: .other)
                    
                    
                    // MARK: - Password
                    UserInputField(input: $password, title: "Password", type: .password)
                    
                    
                    // MARK: - Second Password
                    if selection == .signup {
                        UserInputField(input: $secondPassword, title: "Confirm Password", type: .password)
                    }
                    
                    
                    // MARK: - Error Message
                    ZStack {
                        if errorMessage != "" {
                            Text(errorMessage)
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .frame(width: 350, height: 43) // 43 is minimum height for 2 lines at this font size
                    
                    
                    // MARK: - Forgot Password
                    if selection == .login {    // only for login
                        NavigationLink(destination: ForgotPasswordView()) {
                            Text("Forgot Password?")
                                .bold()
                                .frame(width: 350, alignment: .leading)
                        }
                    }
                    else {                      // only for signup
                        
                        // MARK: - Terms and Conditions
                        HStack (spacing: 0) {
                            Image(systemName: checked ? "checkmark.square.fill" : "square")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .onTapGesture {
                                    checked.toggle()
                                }
                                .padding(.trailing, 7)
                            Text("I agree with our ")
                            Text("Terms and Conditions")
                                .bold()
                        }
                        .font(.subheadline)
                        .frame(width: 350, alignment: .leading)
                    }
                    
                    // MARK: - Login Button
                    NavigationLink(destination: TabsView()) {
                        LargeButton(text: selection == .login ? "Login" : "Continue")
                            .padding(.top, selection == .login ? 40 : 10)
                    }
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
        self.errorMessage = ""
        self.showPassword = false
        self.showSecondPassword = false
        self.checked = false
    }
}

enum LoginOrSignUp {
    case login, signup
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
