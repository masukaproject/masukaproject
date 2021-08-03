//
//  CustomTextField.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-08-01.
//

import SwiftUI

struct CustomTextField: UIViewRepresentable {
    @Binding var text: String
    @Binding var isRevealed: Bool
    @Binding var isFocused: Bool
    @Binding var isEmailAddress: Bool

    func makeUIView(context: UIViewRepresentableContext<CustomTextField>) -> UITextField {
        let textfield = UITextField(frame: .zero)
        textfield.isUserInteractionEnabled = true
        textfield.delegate = context.coordinator
        return textfield
    }

    func makeCoordinator() -> CustomTextField.Coordinator {
        return Coordinator(text: $text, isEnabled: .constant(true), isFocused: $isFocused)
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
        uiView.isSecureTextEntry = !isRevealed
        uiView.autocorrectionType = .no
        uiView.autocapitalizationType = .none
        uiView.keyboardType = isEmailAddress ? .emailAddress : .default
        uiView.textColor = .black
    }

    class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var text: String
        @Binding var isFocused: Bool

        init(text: Binding<String>, isEnabled: Binding<Bool>, isFocused: Binding<Bool>) {
            _text = text
            _isFocused = isFocused
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }

        func textFieldDidBeginEditing(_ textField: UITextField) {
            DispatchQueue.main.async {
               self.isFocused = true
            }
        }

        func textFieldDidEndEditing(_ textField: UITextField) {
            DispatchQueue.main.async {
                self.isFocused = false
            }
        }

        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return false
        }
    }
}
