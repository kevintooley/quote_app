//
//  Quotes.swift
//  Memorable Quotes
//
//  Created by Kevin Tooley on 7/25/21.
//

import Foundation

struct Quote: Decodable, Identifiable {
    
    var id:UUID?
    var name:String
    var image:String
    var quotes:[String]
    
    static func testData() -> Quote {
        
        let testQuote = Quote(id: UUID(),
                              name: "Test Name",
                              image: "ambition",
                              quotes: ["quote 1", "quote 2"])
        
        return testQuote
        
    }
    
}
