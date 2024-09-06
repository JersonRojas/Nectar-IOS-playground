//
//  TransactionDetailsView.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 03/09/2024.
//

import SwiftUI

struct TransactionDetailsView: View {
    let transaction: TransactionItem
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(transaction.headerText)
                .font(.largeTitle)
                .padding(.bottom, 10)
            
            Text("Description: \(transaction.descriptionText)")
                .font(.title2)
            
            Text("Transaction Date: \(formattedDate(transaction.transactionDate))")
                .font(.body)
            
            Text("Processed Date: \(formattedDate(transaction.processedDate))")
                .font(.body)
            
            Text("Points: \(transaction.points)")
                .font(.body)
            
            Text("Monetary Value: £\(transaction.monetaryValue, specifier: "%.2f")")
                .font(.body)
            
            ForEach(transaction.detailTexts, id: \.self) { detail in
                Text(detail)
                    .font(.body)
            }
        }
    }
    
    func formattedDate(_ dateString: String) -> String {
        let formatter = ISO8601DateFormatter()
        formatter.timeZone = TimeZone(secondsFromGMT: 0) 
        if let date = formatter.date(from: dateString) {
            let displayFormatter = DateFormatter()
            displayFormatter.dateStyle = .medium
            displayFormatter.timeStyle = .short
            displayFormatter.timeZone = TimeZone.current
            return displayFormatter.string(from: date)
        }
        return dateString
    }

}

struct TransactionDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailsView(transaction: TransactionItem(
            transactionDate: "2019-07-24T12:36:00+00:00",
            processedDate: "2019-07-25T02:54:47+00:00",
            transactionId: "71280789078",
            headerText: "Sainsbury's ♥️",
            descriptionText: "Fetter Lane Local",
            points: 1,
            monetaryValue: 1.6,
            displayType: "NORMAL",
            detailTexts: ["Nice one, you've got more nectar!"]
        ))
    }
}

