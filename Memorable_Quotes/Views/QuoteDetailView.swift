//
//  QuoteDetailView.swift
//  Memorable Quotes
//
//  Created by Kevin Tooley on 7/26/21.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var quote:Quote?
    
    var body: some View {
        
        // If no meditation set, can't display detail
        if let quote = quote  {
        
            VStack(alignment: .leading, spacing: 20.0) {
               
                
                // Author name
                Text(quote.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Quotes
                ForEach (quote.quotes, id: \.self) { quote in
                    Text(quote)
                }
            
                Spacer()
                
            }.padding()
        }
        
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //QuoteDetailView()
        
        QuoteDetailView(quote: Quote.testData())
        
        
    }
}
