//
//  ContentView.swift
//  Memorable Quotes
//
//  Created by Kevin Tooley on 7/25/21.
//

import SwiftUI

struct QuoteMainView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {

        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    ForEach(model.quotes) { q in
                        
                        NavigationLink(
                            destination: QuoteDetailView(quote: q),
                            label: {
                                Card(quote: q)
                            })
                    }
                }
                
            }
            
        }
        .navigationBarTitle("Test")
    }
}

struct QuoteMainView_Previews: PreviewProvider {
    static var previews: some View {
        
        QuoteMainView()
        
    }
}
