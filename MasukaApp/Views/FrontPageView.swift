//
//  ContactButtonView.swift
//  test
//
//  Created by Kyle Hobeck on 2021-09-08.
//

import SwiftUI
var arr = ["Test1", "Test2", "Test3"]
var create_string: String {
    var new_str = ""
    for point in arr {
        new_str += "• "
        new_str += point
        new_str += "\n"
    }
    return String(new_str.dropLast(2))
}
struct FrontPageView: View {
    var body: some View {
        VStack{
            Image("navbar")
            Spacer()
            Image("Project").imageScale(.large)
            Text("Project Name")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top)
            Text("Project Type")
                .foregroundColor(Color.gray)
                .padding(.bottom)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .frame(width: 325, height: 200)
            Text(create_string)
                .foregroundColor(Color.gray)
                .padding(.trailing, 250.0)
                .padding(.top, 3)
                .padding(.bottom, 5)
            Spacer()
            ZStack {
                Rectangle()
                    .fill(Color(red: 0.027, green: 0.031, blue: 0.055))
                    .frame(width: 300, height: 60)
                    .cornerRadius(16)
                HStack {
                    Button(action: {}, label: {
                        Image("Vector").imageScale(.small)
                        Spacer()
                            .frame(width: 25.0, height: 0.0)
                        Text("Contact Now")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                    })
                }
            }
        }
    }
}

struct FrontPageView_Previews: PreviewProvider {
    static var previews: some View {
        FrontPageView()
    }
}


