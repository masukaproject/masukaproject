//
//  UpdateAccountView.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-25.
//

import SwiftUI

struct UpdateAccountView: View {
    var body: some View {
        VStack {
            
            /* _begin header */
            Text("Setup Account")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.vertical)
            
            Text("Setup your account with a few easy steps!")
                .foregroundColor(Color(red: 0.55, green: 0.55, blue: 0.55, opacity: 1.0))
            /* _end header */
            
            /* _begin form */
            
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            
            /* _end form */
            
            
            
            /* _begin finish button */
            Spacer()
            
            Button(action: {
                print("fyd?")
            }, label: {
                
                HStack {
                    Text("Finish")
                        .padding(.horizontal, 75.0)
                }
                .padding()
                .background(Color(red: 0.32, green: 0.15, blue: 0.09, opacity: 1.0)) // colors aren't scaling correct from figma to swift
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

