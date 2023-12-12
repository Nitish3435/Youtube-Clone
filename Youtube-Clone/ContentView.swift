//
//  ContentView.swift
//  Youtube-Clone
//
//  Created by Nitish Kumar on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        YouTubeTabsView()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
