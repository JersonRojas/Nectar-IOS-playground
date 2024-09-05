//
//  UIKitConfigurator.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 05/09/2024.
//

import SwiftUI
import UIKit

struct UIKitConfigurator: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> TransactionListViewController {
        let interactor = TransactionListInteractor()
        let viewController = TransactionListViewController()
        let presenter = TransactionListPresenter(interactor: interactor, view: viewController)
        viewController.presenter = presenter
        return viewController
    }

    func updateUIViewController(_ uiViewController: TransactionListViewController, context: Context) {
        // Update the view controller if needed
    }
}
