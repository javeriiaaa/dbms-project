//
//  dataLoadercu.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
public class dataLoadercu {
   @Published var CustomerData = [customerData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "customerList", withExtension: "json") {
            
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([customerData].self, from: data)
                self.CustomerData=dataFromJson
            }
            catch{
                print(error)
            }
        }
    }
    
    func sort(){
        self.CustomerData = self.CustomerData.sorted(by: { $0.customer_id < $1.customer_id})
    }
}
