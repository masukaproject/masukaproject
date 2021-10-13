//
//  MyProjectsView.swift
//  MasukaApp
//
//  Created by Uthman Mohamed on 2021-10-13.
//

import SwiftUI

struct MyProjectsView: View {
    var body: some View {
        ProjectListView()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color("DarkBrown"))
                    }

                }
            }
    }
}

struct MyProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectsView()
    }
}
