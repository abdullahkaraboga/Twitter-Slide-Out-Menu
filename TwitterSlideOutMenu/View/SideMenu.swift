//
//  SideMenu.swift
//  TwitterSlideOutMenu
//
//  Created by Abdullah Karaboğa on 28.01.2023.
//

import SwiftUI

struct SideMenu: View {
    @Binding var showMenu: Bool
    var body: some View {

        VStack(alignment: .leading, spacing: 0) {

            VStack(alignment: .leading, spacing: 14) {

                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())

                Text("Abdullah Karaboğa").font(.title2.bold())
                Text("abdullahkaraboa").font(.callout)

                HStack(spacing: 12) {
                    Button {

                    } label: {
                        Label {
                            Text("Followers")
                        } icon: {
                            Text("134")
                        }
                    }

                    Button {

                    } label: {
                        Label {
                            Text("Followers")
                        } icon: {
                            Text("134")
                        }
                    }


                }
                    .foregroundColor(.primary)
            }
                .padding(.horizontal)
                .padding(.leading)
        }
            .padding(.vertical)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(width: getRect().width - 90)
            .frame(maxHeight: .infinity)
            .background(

            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)

        )
            .frame(width: .infinity, alignment: .leading)

    }
}


struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
