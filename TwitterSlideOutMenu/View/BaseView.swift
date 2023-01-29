//
//  BaseView.swift
//  TwitterSlideOutMenu
//
//  Created by Abdullah Karaboğa on 28.01.2023.
//

import SwiftUI

struct BaseView: View {
    @State var showMenu: Bool = false

    init() {
        UITabBar.appearance().isHidden = true
    }

    @State var currentTab = "Home"

    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    @GestureState var gestureOffSet: CGFloat = 0

    var body: some View {

        let sideBarWidth = getRect().width - 90

        NavigationView {
            HStack(spacing: 0) {
                SideMenu(showMenu: $showMenu)

                VStack(spacing: 0) {

                    TabView (selection: $currentTab) {
                        Home(showMenu: $showMenu)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Home")

                        Text("Search")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Search")

                        Text("Notifications")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Notifications")

                        Text("Messages")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Messages")
                    }

                    VStack (spacing: 0) {
                        Divider()
                        HStack(spacing: 0) {
                            TabButton(image: "Home")
                            TabButton(image: "Search")
                            TabButton(image: "Notifications")
                            TabButton(image: "Messages")

                        }
                            .padding([.top], 15)
                    }
                }
                    .frame(width: getRect().width)
                    .overlay(

                    Rectangle()
                        .fill(Color.primary
                        .opacity(Double(offset / sideBarWidth / 5)))
                        .ignoresSafeArea(.container, edges: .vertical).onTapGesture {
                        withAnimation { showMenu.toggle()

                        }
                    }
                )
            }
                .frame(width: getRect().width + sideBarWidth)
                .offset(x: -sideBarWidth / 2)
                .offset(x: offset)
                
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)

        }
            .animation(.easeOut, value: offset == 0)
            .onChange(of: showMenu) { newValue in
            if showMenu && offset == 0 {
                offset = sideBarWidth
                lastStoredOffset = offset
            }

            if !showMenu && offset == sideBarWidth {
                offset = 0
                lastStoredOffset = 0
            }
        }


    }

    @ViewBuilder
    func TabButton(image: String) -> some View {

        Button {
            withAnimation { currentTab = image }
        } label: {
            Image(image)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 23, height: 22)
                .foregroundColor(currentTab == image ? .primary : .gray)
                .frame(maxWidth: .infinity)
        }
    }

}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
