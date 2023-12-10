//
//  GifImageView.swift
//  GifImage
//
//  Created by April Lee on 2023/12/10.
//

import SwiftUI
import WebKit

struct GifImageView: UIViewRepresentable {
    
    private let imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: imageName, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

#Preview {
    GifImageView(imageName: "cherry-blossoms")
}
