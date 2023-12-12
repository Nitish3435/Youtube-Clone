//
//  ChipView.swift
//  Youtube-Clone
//
//  Created by Nitish Kumar on 12/12/23.
//

import SwiftUI

struct ChipView: View {
    let text: String
    var body: some View {
        Text(text)
            .foregroundColor(text == "All" ? .black : .white)
            .font(.system(size: 14))
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(text == "All" ? .white : Color(uiColor: .darkGray))
            .cornerRadius(10)
    }
}

