//
//  TransactionModels.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 05/09/2024.
//

import Foundation

struct TransactionsResponse: Codable {
   
    let items: [TransactionItem]
}
struct TransactionItem: Codable, Identifiable {
    let id = UUID()
    let transactionDate: String
    let processedDate: String
    let transactionId: String?
    let headerText: String
    let descriptionText: String
    let points: Int
    let monetaryValue: Double
    let displayType: String
    let detailTexts: [String]
 

    enum CodingKeys: String, CodingKey {
        case transactionDate
        case processedDate
        case transactionId
        case headerText
        case descriptionText
        case points
        case monetaryValue
        case displayType
        case detailTexts
      
    }
}
