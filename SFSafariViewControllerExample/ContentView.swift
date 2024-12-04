//
//  ContentView.swift
//  SFSafariViewControllerExample
//
//  Created by Batuhan Ulutürk on 27.06.2024.
//

import SwiftUI
import SafariServices

struct ContentView: View {
    @State private var showSafari = false
    
    var body: some View {
        VStack {
            Button("Open Safari View") {
                showSafari = true
            }
            .fullScreenCover(isPresented: $showSafari) {
                SafariView(url: URL(string: "https://www.apple.com")!)
            }
        }
    }
}

#Preview {
    ContentView()
}
