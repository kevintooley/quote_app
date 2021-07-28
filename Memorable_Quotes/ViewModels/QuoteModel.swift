//
//  QuoteModel.swift
//  Memorable Quotes
//
//  Created by Kevin Tooley on 7/26/21.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init() {
        
        self.quotes = DataService.getLocalData()
        
    }
    
}
