//
//  TermsAndConditions.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-08-01.
//

import SwiftUI

struct TermsAndConditions: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            Text("Terms and Conditions")
                .font(.system(size: 32, weight: .bold))
                .padding()
            Spacer()
        }
    }
}

struct TermsAndConditions_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditions(isShowing: .constant(true))
    }
}
