//
//  LoginView.swift
//  MasukaApp
//
//  Created by Sana Sarin on 2021-07-25.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct LoginAndSignupView: View {
    @EnvironmentObject var model: ProjectModel
    
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var secondPassword = ""
    @State private var showPassword = false
    @State private var showSecondPassword = false
    @State private var errorMessage = ""
    @State private var checked = false
    
    @State private var termsAndConditions = false
    @State private var inForgotPassword = false
    @State private var selection: LoginOrSignUp = .login
    
    var body: some View {
        NavigationView {
            ZStack {
                
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
                    HStack {
                        
                        // Login Tab
                        CapsuleTab(text: "Login", selection: $selection, current: .login)
                        
                        // Sign-Up Tab
                        CapsuleTab(text: "Sign-Up", selection: $selection, current: .signup)
                        
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
                    UserInputField(input: $email, title: "Email Address", type: .email)
                    
                    
                    // MARK: - Username
                    if selection == .signup {
                        UserInputField(input: $username, title: "Username", type: .other)
                    }
                    
                    // MARK: - Password
                    UserInputField(input: $password, showPass: $showPassword, title: "Password", type: .password)
                    
                    
                    // MARK: - Second Password
                    if selection == .signup {
                        UserInputField(input: $secondPassword, showPass: $showSecondPassword, title: "Confirm Password", type: .password)
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
                    if selection == .login {
                        NavigationLink(destination: ForgotPasswordView(isInView: $inForgotPassword), isActive: $inForgotPassword) {
                            Text("Forgot Password?")
                                .bold()
                                .frame(width: 350, alignment: .leading)
                        }
                    }
                    
                    
                    // MARK: - Terms and Conditions
                    if selection == .signup {
                        
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
                                .onTapGesture {
                                    termsAndConditions = true
                                }
                                .sheet(isPresented: $termsAndConditions) {
                                    TermsAndConditionsView(isShowing: $termsAndConditions)
                                }
                        }
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .frame(width: 350, alignment: .leading)
                        
                    }
                    
                    
                    // MARK: - Login Button
                    Button(action: {
                        if selection == .login {
                            verifyLogin()
                        }
                        else {
                            verifySignup()
                        }
                    }) {
                        LargeButton(text: selection == .login ? "Login" : "Create Account")
                    }
                    .padding(.top, selection == .login ? 40 : 10)
                    
                    
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
        self.inForgotPassword = false
        self.checked = false
    }
    
    func verifyLogin() {
        model.loggedIn = true
//        Auth.auth().signIn(withEmail: self.email, password: self.password) { result, error in
//            if error != nil {
//                // Coundn't sign into the account.
//                model.loggedIn = false
//                self.errorMessage = error!.localizedDescription
//                return
//            }
//            else {
//                model.loggedIn = true
//            }
//        }
//
//        // model.getUserData()
//
//        model.checkLogin()
    }
        
    
    func verifySignup() {
        model.loggedIn = true
        
//        if secondPassword != password {
//            errorMessage = "Passwords do not match"
//            return
//        }
//
//        if username == "" {
//            errorMessage = "Please fill out all details"
//            return
//        }
//
//        Auth.auth().createUser(withEmail: email, password: password) { result, error in
//            DispatchQueue.main.async {
//
//                guard error == nil else {
//                    errorMessage = error!.localizedDescription
//                    return
//                }
//
//                let user = Auth.auth().currentUser
//                let db = Firestore.firestore()
//                let reference = db.collection("users").document(user!.uid)
//
//                reference.setData(["username": username], merge: true)
//
//                model.user = User()
//
//                let currentUser = model.user
//                currentUser.username = username
//
//                model.checkLogin()
//            }
//        }
        
    }
}

enum LoginOrSignUp {
    case login, signup
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginAndSignupView()
            .previewDisplayName("Light Mode")
        //        LoginAndSignupView()
        //            .preferredColorScheme(.dark)
        //            .previewDisplayName("Dark Mode")
    }
}
