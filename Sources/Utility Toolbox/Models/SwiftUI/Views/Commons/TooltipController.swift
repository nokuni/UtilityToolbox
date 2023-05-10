//
//  TooltipController.swift
//  
//
//  Created by Maertens Yann-Christophe on 10/05/23.
//

import SwiftUI

struct TooltipController<Content: View>: UIViewControllerRepresentable {
    
    @Binding var isPresented: Bool
    var padding: CGFloat
    var arrowDirection: UIPopoverArrowDirection
    var content: Content
    @State var alreadyPresented: Bool = false
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        controller.view.backgroundColor = .clear
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if alreadyPresented {
            
            if let hostingController = uiViewController.presentedViewController as? CustomHostingView<Content> {
                hostingController.rootView = content
                let size = CGSize(width: UIScreen.main.bounds.width - padding, height: UIScreen.main.bounds.height - padding)
                hostingController.preferredContentSize = hostingController.view.systemLayoutSizeFitting(size)
            }
            
            if !isPresented {
                uiViewController.dismiss(animated: true) {
                    alreadyPresented = false
                }
            }
        } else {
            if isPresented {
                let controller = CustomHostingView(rootView: content)
                controller.view.backgroundColor = .clear
                controller.modalPresentationStyle = .popover
                controller.popoverPresentationController?.permittedArrowDirections = arrowDirection
                
                controller.presentationController?.delegate = context.coordinator
                
                controller.popoverPresentationController?.sourceView = uiViewController.view
                uiViewController.present(controller, animated: true)
            }
        }
    }
    
    class Coordinator: NSObject, UIPopoverPresentationControllerDelegate {
        var parent: TooltipController
        init(parent: TooltipController) {
            self.parent = parent
        }
        
        func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
            return .none
        }
        
        func presentationControllerWillDismiss(_ presentationController: UIPresentationController) {
            parent.isPresented = false
        }
        
        func presentationController(_ presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?) {
            DispatchQueue.main.async {
                self.parent.alreadyPresented = true
            }
        }
    }
}

class CustomHostingView<Content: View>: UIHostingController<Content> {
    override func viewDidLoad() {
        super.viewDidLoad()
        preferredContentSize = view.intrinsicContentSize
    }
}
