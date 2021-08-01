//
//  UserInputField.swift
//  MasukaApp
//
//  Created by Masuka Org on 2021-07-30.
//

import SwiftUI

struct UserInputField: View {
    @Binding var input: String
    @State private var selected = false
    var title: String
    var type: InputType
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text(title)
                .fontWeight(selected ? .semibold : .regular)
                .opacity(selected ? 1 : 0.6)
                .padding(.leading, 5)
            
            CustomTextField(text: $input, isRevealed: .constant(type == .password ? false : true), isFocused: $selected, isEmailAddress: .constant(type == .email ? true : false))
            
            UnderLine()
                .stroke(Color.black.opacity(selected ? 1 : 0.6), lineWidth: selected ? 4 : 1)
        }
        .frame(width: 350, height: 65)
        
    }
}

struct UnderLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
    }
}

enum InputType {
    case email, password, other
}

struct TextInput_Previews: PreviewProvider {
    static var previews: some View {
        UserInputField(input: .constant(""), title: "Password", type: .password)
    }
}
