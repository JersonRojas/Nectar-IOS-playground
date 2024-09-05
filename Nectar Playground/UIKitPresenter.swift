//
//  UIKitPresenter.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 05/09/2024.
//

import Foundation

class TransactionListPresenter {
    private let interactor: TransactionListInteractor
    private weak var view: TransactionListViewController?

    var transactions: [TransactionItem] = []

    init(interactor: TransactionListInteractor, view: TransactionListViewController) {
        self.interactor = interactor
        self.view = view
    }

    func loadTransactions() {
        interactor.fetchTransactions { [weak self] transactions in
            self?.transactions = transactions
            self?.view?.displayTransactions(transactions)
        }
    }
}

