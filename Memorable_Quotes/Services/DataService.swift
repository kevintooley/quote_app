//
//  DataService.swift
//  Memorable Quotes
//
//  Created by Kevin Tooley on 7/25/21.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        
        //get path to local data
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        //verify path not nil
        guard pathString != nil else {
            return [Quote]()
        }
        
        //create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //create data object
            let data = try Data(contentsOf: url)
            
            //decode data
            let decoder = JSONDecoder()
            
            do {
                var quoteData = try decoder.decode([Quote].self, from: data)
                
                //add unique id's
                for index in 0..<quoteData.count {
                    quoteData[index].id = UUID()
                }
                
                //reuturn the data
                return quoteData
            }
            catch {
                print(error)
            }
            
        }
        catch {
            print(error)
        }

        
        return [Quote]()
    }
    
}
