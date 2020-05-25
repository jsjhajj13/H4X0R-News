//
//  WebView.swift
//  H4X0R News
//
//  Created by Jagdev Singh Jhajj on 2020-05-24.
//  Copyright © 2020 Jagdev Singh Jhajj. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeURL = urlString{
            if let url = URL(string: safeURL){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
