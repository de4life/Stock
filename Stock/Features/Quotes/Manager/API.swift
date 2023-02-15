//
//  API.swift
//  Stock
//
//  Created by Артур Агеев on 11.02.2023.
//

import Foundation

struct API {
    
    
    static var baseUrl: String {
        return "https://www.alphavantage.co/query?"
    }
    
    static func symbolSearchUrl(for searchKey: String) -> String {
        return urlBy(symbol: .quote, searchKey: searchKey)
    }
    
    static func quoteUrl(for searchKey: String) -> String {
        return urlBy(symbol: .quote, searchKey: searchKey)
    }
    
    private static func urlBy(symbol: SymbolFunction, searchKey: String) -> String {
        switch symbol {
        case .search:
            return "\(baseUrl)function\(symbol.rawValue)&apikey=\(key)&keywords=\(searchKey)"
        case .quote:
            return "\(baseUrl)function\(symbol.rawValue)&apikey=\(key)&symbol=\(searchKey)"
        }
    }
    
    enum SymbolFunction: String {
        case search = "SYMBOL_SEARCH"
        case quote = "GLOBAl_Quote"
        
    }
    
}

extension API {
    static var key: String {
        return "DF9ZLBRS5MNPUR19"
    }
}
