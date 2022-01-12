//
//  dataLoader.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
public class dataLoader {
   @Published var AgencyData = [agencyData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "agencyList", withExtension: "json") {
            
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([agencyData].self, from: data)
                self.AgencyData=dataFromJson
            }
            catch{
                print(error)
            }
        }
    }
    
    func sort(){
        self.AgencyData = self.AgencyData.sorted(by: { $0.agency_id < $1.agency_id})
    }
}
