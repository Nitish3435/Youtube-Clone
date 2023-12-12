//
//  TabView.swift
//  Youtube-Clone
//
//  Created by Nitish Kumar on 11/12/23.
//

import SwiftUI

struct YouTubeTabsView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    HomeView()
                    Spacer()
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack {
                    Spacer()
                    HStack {
                        TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/40,
                                   systemIconName: "home", tabName: "Home")
                        TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/40,
                                   systemIconName: "shorts", tabName: "Shorts")
                        TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/40,
                                   systemIconName: "plus.circle", tabName: "", systemImage: true)
                        TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/40,
                                   systemIconName: "subscription", tabName: "Subscriptions")
                        TabBarIcon(
                            width: geometry.size.width/5, height: geometry.size.height/40,
                            systemIconName: "library", tabName: "Library")
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/9.66)
                    .background(.black)
                }
             }
             .edgesIgnoringSafeArea(.bottom)
         }
    }
}
struct TabBarIcon: View {
     let width, height: CGFloat
     let systemIconName, tabName: String
    var systemImage: Bool = false
     var body: some View {
         VStack {
             if systemImage {
                 Image(systemName: systemIconName)
                     .resizable()
                     .foregroundColor(.white)
                     .aspectRatio(contentMode: .fit)
                     .frame(width: width + 15, height: height + 7)
                     .padding(.top, 10)
             } else {
                 Image(systemIconName)
                     .resizable()
                     .foregroundColor(.white)
                     .aspectRatio(contentMode: .fit)
                     .frame(width: width, height: height)
                     .padding(.top, 10)
             }
             Text(tabName)
                 .font(.system(size: 10))
                 .foregroundColor(.white)
             Spacer()
         }
         .padding(.horizontal, -4)
         .foregroundColor(.white)
     }
 }

