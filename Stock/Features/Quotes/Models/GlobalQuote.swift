//
//  GlobalQuote.swift
//  Stock
//
//  Created by Артур Агеев on 10.02.2023.
//

import Foundation

struct GlobalQuotesResponse: Codable {
    var quote: String
    
    private enum CodingKeys: String, CodingKey {
        case quote = "Global Qoute"
    }
}


struct Quote: Codable {
    
}
