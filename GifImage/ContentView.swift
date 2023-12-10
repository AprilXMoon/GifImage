//
//  ContentView.swift
//  GifImage
//
//  Created by April Lee on 2023/12/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GifImageView(imageName: "cherry-blossoms")
                .frame(width: 60, height: 60)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
