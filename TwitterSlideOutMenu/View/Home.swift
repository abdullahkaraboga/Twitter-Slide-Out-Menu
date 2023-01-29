//
//  Home.swift
//  TwitterSlideOutMenu
//
//  Created by Abdullah Karaboğa on 29.01.2023.
//

import SwiftUI

struct Home: View {
    @Binding var showMenu: Bool
    var body: some View {

        VStack {

            VStack(spacing: 0) {
                HStack {

                    Button {
                        withAnimation { showMenu.toggle() }

                    } label: {
                        Image("Pic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())

                        Spacer()

                        NavigationLink {

                            Text("Time Line View")
                                .navigationTitle("Timeline")



                        } label: {
                            Image("Pic")
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.primary)
                        }
                    }

                }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                Divider()
            }
                .overlay(
                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)

            )

            Spacer()
        }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
