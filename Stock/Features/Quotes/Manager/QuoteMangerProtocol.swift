//
//  QuoteMangerProtocol.swift
//  Stock
//
//  Created by Артур Агеев on 11.02.2023.
//

import Foundation


protocol QuoteManagerProtocol {
    
    var quotes: [Quote] { get set }
    
    func dowload(stock: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void)
    
}
