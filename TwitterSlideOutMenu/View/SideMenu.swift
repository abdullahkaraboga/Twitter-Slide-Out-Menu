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
                            Text("134").font(.callout.bold())
                        }
                    }

                    Button {

                    } label: {
                        Label {
                            Text("Followers")
                        } icon: {
                            Text("134").font(.callout.bold())
                        }
                    }


                }.foregroundColor(.primary)
            }.padding(.horizontal).padding(.leading)

            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    VStack(alignment: .leading, spacing: 30) {

                        TabButton(title: "Profile", image: "Pic")
                        TabButton(title: "Lists", image: "Pic")
                        TabButton(title: "Topics", image: "Pic")
                        TabButton(title: "Bookmarks", image: "Pic")
                        TabButton(title: "Spaces", image: "Pic")
                        TabButton(title: "Notification", image: "Pic")
                        TabButton(title: "Members", image: "Pic")
                        TabButton(title: "d", image: "Pic")
                    }.padding()
                        .padding(.leading)
                        .padding(.top)
                }


                Divider()

                VStack(alignment: .leading, spacing: 15) {
                    Button("Setting and Privacy") {

                    }

                    Button("Help Center") {

                    }
                }
                    .padding()
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.primary)
            }

            VStack(spacing: 0) {
                Divider()

                HStack {
                    Button {

                    } label: {
                        Image("Pic")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }

                    Spacer()

                    Button {

                    } label: {
                        Image("Pic")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }
                }
                    .padding([.horizontal, .top], 15)
                    .foregroundColor(.primary)
            }
        }
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .leading)

            .frame(width: getRect().width - 90)
            .frame(maxHeight: .infinity)
            .background(

            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)

        )
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

@ViewBuilder
func TabButton(title: String, image: String) -> some View {

    NavigationLink {

        Text("\(title) View")
            .navigationTitle(title)

    } label: {
        HStack(spacing: 14) {
            Image(image)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fill)
                .frame(width: 22, height: 22)

            Text(title)
        }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
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
