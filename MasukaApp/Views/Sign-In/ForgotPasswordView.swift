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
    
    @State private var resetType: ResetType = .username
    
    @State private var attempts: Int = 0 // for animation
    
    let backArrow = "arrowshape.turn.up.left.fill"
    let lockIcon = "lock.circle.fill"
    
    var body: some View {
        
        ZStack {
            // MARK: - Background Colour
            Color("Beige")
                .ignoresSafeArea()
            
            VStack (spacing: 25) {
                
                
                // MARK: - Header
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
                
                
                
                // MARK: - Title
                Group {
                    Image(systemName: lockIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 52, height: 52)
                        .padding(.top, -30)
                        .onTapGesture {
                            withAnimation(.default) {
                                attempts += 1
                            }
                        }
                        .modifier(Shake(animatableData: CGFloat(attempts)))
                    
                    Text("Forgot Password")
                        .font(.system(size: 38, weight: .bold))
                }
                
                
                // MARK: - Subtitle
                Text("Enter your email address or username and we will send you a link to get back to your account.")
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                
                
                // MARK: - Picker for Username/Email
                Picker(selection: $resetType, label: Text("Select Choice")) {
                    Text("Username").tag(ResetType.username)
                    Text("Email").tag(ResetType.email)
                }
                .pickerStyle(WheelPickerStyle())
                .onChange(of: resetType) { _ in
                    email = ""
                    username = ""
                }
                .padding(.top, -30)
                
                
                // MARK: - Input Field
                if resetType == .email {
                    UserInputField(input: $email, title: "Email Address", type: .email)
                } else {
                    UserInputField(input: $username, title: "Username", type: .other)
                }
                
                Spacer()
                
                
                // MARK: - Continue Button
                Button(action: {
                    
                }) {
                    LargeButton(text: "Continue")
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
    
}

enum ResetType {
    case email, username
}


// Shake Animation for lock icon
struct Shake: GeometryEffect {
    var amount: CGFloat = 5
    var shakesPerUnit = 3
    var animatableData: CGFloat
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(
            CGAffineTransform(
                translationX: amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)),
                y: 0
            )
        )
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(isInView: .constant(true))
    }
}
