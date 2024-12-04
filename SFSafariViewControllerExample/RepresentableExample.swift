//
//  RepresentableExample.swift
//  SFSafariViewControllerExample
//
//  Created by Batuhan Ulutürk on 4.12.2024.
//

import SafariServices
import SwiftUI


struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // Güncelleme işlemleri gerekirse buraya
    }
}


struct SafariViewAdvanced: UIViewControllerRepresentable {
    let url: URL
    @Binding var isPresented: Bool
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        viewController.modalPresentationStyle = .fullScreen
        
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.delegate = context.coordinator
        
        viewController.present(safariViewController, animated: true)
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Güncelleme işlemleri gerekirse buraya
    }
    
    class Coordinator: NSObject, SFSafariViewControllerDelegate {
        var parent: SafariViewAdvanced
        
        init(_ parent: SafariViewAdvanced) {
            self.parent = parent
        }
        
        func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
            parent.isPresented = false
            controller.dismiss(animated: true)
        }
    }
}
