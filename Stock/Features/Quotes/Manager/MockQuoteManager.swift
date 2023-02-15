//
//  MockQuoteManager.swift
//  Stock
//
//  Created by Артур Агеев on 11.02.2023.
//

import Foundation

final class MockQuoteManager: QuoteManagerProtocol, ObservableObject {
    
    @Published var quotes: [Quote] = []
    
    func dowload(stock: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void) {
        let aapl = Quote(symbol: "AAPL", open: "135.90", high: "136.39", low: "133.77", price: "", change: "-0.19", changePercent: "-0.26")
        let goog = Quote(symbol: "GOOG", open: "2099.51", high: "2102.03", low: "2077.32", price: "2095.89", change: "0.51", changePercent: "0.024%")
        for _ in 0..<8 {
            quotes.append(contentsOf: [aapl, goog])
        }
    }
    
}
