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
    
    var body: some View {
        ZStack {
            Color("Beige")
                .ignoresSafeArea()
            
            ScrollView (showsIndicators: false) {
                VStack (alignment: .leading) {
                    ForEach(SideMenuOptions.allCases, id: \.self) { option in
                        SideMenuOptionView(option: option, isCurrent: model.currentView == option)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    sideMenuOpened = false
                                }
                                model.currentView = option
                            }
                        Divider()
                    }
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
