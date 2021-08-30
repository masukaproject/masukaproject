//
//  UpdateAccountView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct UpdateAccountView: View {
    @State private var universityName = ""
    
    
    var body: some View {
        VStack {
            
            /* _begin header */
            Spacer()
            Text("Setup Account")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.vertical)
            
            Text("Setup your account with a few easy steps!")
                .foregroundColor(Color(red: 0.55, green: 0.55, blue: 0.55, opacity: 1.0))
                .padding()
            /* _end header */
            
            /* _begin form */
            
            Spacer()
            UserInputField(input: $universityName, title: "University Name", type: .other)
                .padding(.bottom, 25.0)
            
            
            UserInputField(input: $universityName, title: "Skills", type: .other)
                .padding(.bottom, 15)
            
            /* _end form */
            
            
            HStack {
                Button(action: {
                    print("works")
                }, label: {
                    Text("Coding")
                        .padding(10)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        .cornerRadius(12)
                    .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                })
                
                Button(action: {
                    print("works")
                }, label: {
                    Text("Web Design")
                        .padding(10)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        .cornerRadius(12)
                    .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                })
                
                
                Button(action: {
                    print("works")
                }, label: {
                    Text("Academia")
                        .padding(10)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        .cornerRadius(12)
                    .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                })
                
            }
            
            Spacer()
            
            Button(action: {
                print("fyd?")
            }, label: {
                
                HStack {
                    Text("Finish")
                        .padding(.horizontal, 75.0)
                }
                .padding()
                .background(Color("DarkBrown"))
                .foregroundColor(.white)
                .cornerRadius(8)
            })
            
            Spacer()
            /* _end finish button */
            
            
        }
    }
}

struct UpdateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateAccountView()
    }
}

