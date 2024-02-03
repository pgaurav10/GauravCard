//
//  ProjectDetailView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/31/24.
//

import SwiftUI
import WebKit

struct ProjectDetailView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl) {
                print(url)
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
