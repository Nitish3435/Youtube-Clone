//
//  HomeView.swift
//  Youtube-Clone
//
//  Created by Nitish Kumar on 11/12/23.
//

import SwiftUI

struct HomeView: View {
    @State var videoList: [YoutubeVideo] = [
        YoutubeVideo(thumbnail: "first_video_thumbnail",
                     title: "Grand Theft Auto IV - Trailer 1",
                     channelName: "Rockstar Game • ",
                     profilePic: "first_video_profile_pic",
                     views: "104M • ",
                     posted: "1 day ago"),
        YoutubeVideo(thumbnail: "second_video_thumbnail",
                     title: "$10.000 Every Day You Survive In A Grocery Store",
                     channelName: "MrBeast • ",
                     profilePic: "second_video_profile_pic",
                     views: "77M • ",
                     posted: "3 days ago"),
        YoutubeVideo(thumbnail: "third_video_thumbnail",
                     title: "Azteca - Sute albastre (Prod. AMTILB)",
                     channelName: "Azteca • ",
                     profilePic: "third_video_profile_pic",
                     views: "3.2M • ",
                     posted: "5 years ago")

    ]

    let chipTexts = ["All", "Cricket", "Cricbuzz Live", "Stand Up", "IPL", "CSK"]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 90, height: 25)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                Spacer()
                Image("cast")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Image("profile_pic")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    Image(systemName: "safari")
                        .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.clear, lineWidth: 1)
                                    )
                                    .background(Color(uiColor: .darkGray))
                                    .cornerRadius(10)
                        .padding(.trailing, 5)
                    ForEach(chipTexts, id: \.self) { text in
                        ChipView(text: text)
                    }
                }
            }
            .padding([.leading, .vertical])
            GeometryReader { reader in
                ScrollView(showsIndicators: false) {
                    ForEach(videoList, id: \.title) { video in
                        VStack {
                            Image(video.thumbnail)
                                .resizable()
                                .frame(width: reader.size.width, height: 175)
                                .aspectRatio(contentMode: .fit)
                            HStack(alignment: .top) {
                                Image(video.profilePic)
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: .fit)
                                VStack(alignment: .leading) {
                                    Text(video.title)
                                        .font(.system(size: 16))
                                        .foregroundColor(.white)
                                    HStack {
                                        Text(video.channelName)
                                            .font(.system(size: 14))
                                            .foregroundColor(Color(uiColor: .darkGray))
                                        Text(video.views)
                                            .font(.system(size: 14))
                                            .foregroundColor(Color(uiColor: .darkGray))
                                        Text(video.posted)
                                            .font(.system(size: 14))
                                            .foregroundColor(Color(uiColor: .darkGray))
                                    }
                                }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .rotationEffect(.degrees(-90))
                                    .padding(.horizontal)
                                    .padding(.top, 5)
                            }
                        }
                        .padding(.bottom)
                    }
                }
            }
            Spacer()
        }
        .padding(.horizontal, 10)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
