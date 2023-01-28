//
//  BaseView.swift
//  TwitterSlideOutMenu
//
//  Created by Abdullah Karaboğa on 28.01.2023.
//

import SwiftUI

struct BaseView: View {
    @State var showMenu: Bool = false
    var body: some View {

        NavigationView {
            HStack(spacing: 0){
                SideMenu(showMenu: $showMenu)
                
            }

        }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)

    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
