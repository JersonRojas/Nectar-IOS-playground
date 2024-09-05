//
//  MainViewModelSwiftUI.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 03/09/2024.
//

import Foundation

let apiURL = "https://833fecbe-3eb1-40ed-a7a4-47f3a7bfe9c6.mock.pstmn.io/transactions"
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

class SwiftUIViewModel: ObservableObject {
    @Published var transactions: [TransactionItem]? = nil
    
       func fetchTransactions() {
           guard let url = URL(string: apiURL) else { return }

           URLSession.shared.dataTask(with: url) { data, response, error in
               if let data = data {
                   let decoder = JSONDecoder()
                   do {
                       let response = try decoder.decode(TransactionsResponse.self, from: data)
                       DispatchQueue.main.async {
                           self.transactions = response.items
                       }
                   } catch {
                       print("Error decoding JSON: \(error)")
                   }
               }
           }.resume()
       }
}
