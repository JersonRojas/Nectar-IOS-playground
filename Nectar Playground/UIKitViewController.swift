//
//  UIKitView.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 03/09/2024.
//
import UIKit
import SwiftUI

class TransactionListViewController: UIViewController {
    var presenter: TransactionListPresenter!

    private let tableView = UITableView()
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Transactions UI Kit"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitleLabel()
        setupTableView()
        presenter.loadTransactions()
        tableView.register(TransactionTableViewCell.self, forCellReuseIdentifier: "TransactionCell")
    }

    private func setupTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

    func displayTransactions(_ transactions: [TransactionItem]) {
        tableView.reloadData()
    }
}

extension TransactionListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.transactions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! TransactionTableViewCell
        let transaction = presenter.transactions[indexPath.row]
        cell.configure(with: transaction)
        cell.delegate = self
        return cell
    }
}

extension TransactionListViewController: UITableViewDelegate, TransactionTableViewCellDelegate {
    func didTapCell(with transaction: TransactionItem) {
        let detailsView = TransactionDetailsView(transaction: transaction)
        let hostingController = UIHostingController(rootView: detailsView)
        navigationController?.pushViewController(hostingController, animated: true)
    }
}
