//
//  UIKitInteractor.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 05/09/2024.
//

import Foundation

class TransactionListInteractor {
    let apiURL = "https://833fecbe-3eb1-40ed-a7a4-47f3a7bfe9c6.mock.pstmn.io/transactions"
    
    func fetchTransactions(completion: @escaping ([TransactionItem]) -> Void) {
        guard let url = URL(string: apiURL) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                do {
                    let response = try decoder.decode(TransactionsResponse.self, from: data)
                    DispatchQueue.main.async {
                        completion(response.items)
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }.resume()
    }
}
