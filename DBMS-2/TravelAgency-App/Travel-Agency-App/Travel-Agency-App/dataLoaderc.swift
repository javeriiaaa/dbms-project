//
//  dataLoaderc.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
public class dataLoaderc {
   @Published var CabData = [cabData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "cabList", withExtension: "json") {
            
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([cabData].self, from: data)
                self.CabData=dataFromJson
            }
            catch{
                print(error)
            }
        }
    }
    
    func sort(){
        self.CabData = self.CabData.sorted(by: { $0.cab_id < $1.cab_id})
    }
}
