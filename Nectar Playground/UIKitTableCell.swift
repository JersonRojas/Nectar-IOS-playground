//
//  UIKitTableCell.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 06/09/2024.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {
    let headerLabel = UILabel()
    let descriptionLabel = UILabel()
    let pointsLabel = UILabel()
    let valueLabel = UILabel()
    let stackView = UIStackView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    private func setupViews() {
        headerLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        descriptionLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        pointsLabel.font = UIFont.preferredFont(forTextStyle: .caption1)
        valueLabel.font = UIFont.preferredFont(forTextStyle: .caption1)

        stackView.axis = .vertical
        stackView.spacing = 8

        let hStack = UIStackView(arrangedSubviews: [pointsLabel, UIView(), valueLabel])
        hStack.axis = .horizontal
        hStack.spacing = 8

        stackView.addArrangedSubview(headerLabel)
        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(hStack)

        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }

    func configure(with transaction: TransactionItem) {
        headerLabel.text = transaction.headerText
        descriptionLabel.text = transaction.descriptionText
        pointsLabel.text = "Points: \(transaction.points)"
        valueLabel.text = String(format: "Value: £ %.2f", transaction.monetaryValue)
    }
}


