//
//  ProfileView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var model: ProjectModel
    
    var body: some View {
        
        VStack {
            ZStack {
                VStack {
                    Image("toronto")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: Constants.screenWidth, height: 75)
            
                    
                                            
                    
                    HStack {
                        Spacer()
                        
                        Image("uthman")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100.0, height: 100.0)
                            .cornerRadius(10000)
                        
                        
                        VStack{
                            Text("John Doe")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("University of Toronto")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }.padding(.top, 90.0)
                        Spacer()
                    }
                    .frame(height: 150.0)
                    
                    
                }
            }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            
            HStack {
                    Image("uthman")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                        .cornerRadius(10000)
                
                
                Button(action: {
                    print("hahaha")
                }) {
                    ZStack{
                        
                        Text("Create Project").cornerRadius(7)

                    }
                    .frame(width: Constants.screenWidth - 70, height: 30)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.897, green: 0.902, blue: 0.919)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(7)
                }
            }
            .frame(width: Constants.screenWidth, height: 75)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            .padding(.top)
            
            
            VStack {
                HStack {
                    Image("uthman")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30.0, height: 30.0)
                        .cornerRadius(10000)
                    
                    Text("John Doe")
                        .fontWeight(.medium)
                    
                }.frame(width: Constants.screenWidth-20, height: /*@START_MENU_TOKEN@*/50/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Text("Masuka is an app that will allow project collaboration between students")
                
                Spacer()
                
                Button(action: {
                    print("hahaha")
                }) {
                    ZStack{
                        
                        Text("View Project").cornerRadius(7)

                    }
                Spacer()
            }
            .frame(width: Constants.screenWidth-15, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)

            
            
            
            Spacer()
            
            Button(action: {
                model.loggedIn = false
            }) {
                Text("Log out")
                    .font(.system(size: 52, weight: .bold))
            }
        }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Beige")/*@END_MENU_TOKEN@*/)
        
    
        
    }
    
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
