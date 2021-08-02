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
    @Binding var showPass: Bool
    var title: String
    var type: InputType
    
    init(input: Binding<String>, selected: Bool = false, showPass: Binding<Bool> = .constant(false), title: String, type: InputType) {
        self._input = input
        self.selected = selected
        self._showPass = showPass
        self.title = title
        self.type = type
    }
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text(title)
                .fontWeight(selected ? .medium : .regular)
                .foregroundColor(selected ? .black : .gray)
                .padding(.leading, 5)
                .animation(.easeInOut(duration: 0.8), value: selected)
            
            HStack {
                CustomTextField(
                    text: $input,
                    isRevealed: .constant((type == .password && !showPass) ? false : true),
                    isFocused: $selected,
                    isEmailAddress: .constant(type == .email ? true : false)
                )
                
                if type == .password {
                    Image(systemName: showPass ? "eye.slash.fill" : "eye.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 25, height: 16)
                        .foregroundColor(showPass ? .red : .gray)
                        .onTapGesture {
                            showPass.toggle()
                        }
                }
            }
            
            HorizontalLine()
                .stroke(Color.black.opacity(selected ? 1 : 0.6), lineWidth: selected ? 4 : 1)
                .animation(.easeInOut(duration: 0.3), value: selected)
        }
        .frame(width: 350, height: 65)
        
    }
}

struct HorizontalLine: Shape {
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
