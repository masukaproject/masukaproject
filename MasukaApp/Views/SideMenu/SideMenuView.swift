//
//  SideMenuView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-10-10.
//

import SwiftUI
import grpc

struct SideMenuView: View {
    @EnvironmentObject var model: ProjectModel
    
    @Binding var sideMenuOpened: Bool
    @State private var signOutPressed: Bool = false
    
    var body: some View {
        ZStack {
            Color("Beige")
                .ignoresSafeArea()
            VStack (alignment: .leading) {
                ForEach(SideMenuOptions.allCases.dropLast(), id: \.self) { option in
                    SideMenuOptionView(option: option, isCurrent: model.currentView == option)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                sideMenuOpened = false
                            }
                            model.currentView = option
                        }
                    Divider()
                }
                
                Spacer()
                
                // Sign Out
                Button(action: {
                    signOutPressed = true
                }) {
                    SideMenuOptionView(option: .signout, isCurrent: false)
                        .foregroundColor(.red)
                }
                .padding(.bottom)
                .alert(isPresented: $signOutPressed) {
                    Alert(
                        title: Text("Are you sure you want to Sign Out"),
                        primaryButton: .cancel(),
                        secondaryButton: .destructive(Text("Sign Out"),
                                                      action: {
                                                          model.loggedIn = false
                                                      }))
                }
            }
            .padding()
        }
        //        .frame(width: 300)
        //        .padding(.leading, -(UIScreen.main.bounds.width - 300))
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(sideMenuOpened: .constant(true))
    }
}
