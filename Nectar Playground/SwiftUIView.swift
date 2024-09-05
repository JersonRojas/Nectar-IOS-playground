//
//  SwiftUIView.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 03/09/2024.
//

import SwiftUI

public struct SwiftUIView: View {
    @StateObject private var viewModel = SwiftUIViewModel()
    public var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8833712935, green: 0.8881192803, blue: 0.8982322812, alpha: 1))
                .edgesIgnoringSafeArea(.top)
            NavigationStack {
                VStack {
                    Text("Transactions SwiftUI")
                    if let transactions = viewModel.transactions {
                        List(transactions) { transaction in
                            NavigationLink(destination: TransactionDetailsView(transaction:transaction)) {
                                VStack(alignment: .leading) {
                                    Text(transaction.headerText)
                                        .font(.headline)
                                    Text(transaction.descriptionText)
                                        .font(.subheadline)
                                    HStack {
                                        Text("Points: \(transaction.points)")
                                            .font(.caption)
                                        Spacer()
                                        Text("Value: £ \(transaction.monetaryValue, specifier: "%.2f")")
                                            .font(.caption)
                                    }
                                }
                            }
                        }
                    }
                    else {
                        Text("Loading...")
                    }
                    
                }
                
                .onAppear {
                    viewModel.fetchTransactions()
                }
            }.navigationTitle("SwiftUI")
            
        }
    }
}

#Preview {
    SwiftUIView()
}
