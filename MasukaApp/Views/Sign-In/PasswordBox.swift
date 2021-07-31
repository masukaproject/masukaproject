//
//  PasswordBox.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-30.
//

import SwiftUI

struct PasswordBox: View {
    @Binding var password: String
    @State var showPassword = false
    var defaultText: String
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color(.systemGray5))
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color("DarkBrown"), style: StrokeStyle(lineWidth: 0.5))
            
            HStack(spacing: 15) {
                Image(systemName: "lock")
                    .foregroundColor(.black.opacity(0.9))
                Group {
                    if !showPassword {
                        SecureField(defaultText, text: self.$password)
                    } else {
                        TextField(defaultText, text: self.$password)
                    }
                }
                .disableAutocorrection(true)
                .autocapitalization(.none)
                Image(systemName: "eye")
                    .foregroundColor(showPassword ? .red : .black.opacity(0.5))
                    .onTapGesture {
                        showPassword.toggle()
                    }
            }
            .padding()
        }
        .frame(width: 370, height: 60)
        
    }
}

struct PasswordBox_Previews: PreviewProvider {
    static var previews: some View {
        PasswordBox(password: .constant(""), defaultText: "Password")
    }
}
