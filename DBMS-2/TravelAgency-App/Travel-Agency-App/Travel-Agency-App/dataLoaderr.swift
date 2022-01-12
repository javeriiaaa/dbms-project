//
//  dataLoaderr.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
public class dataLoaderr {
@Published var RiderData = [riderData]()
 
 init() {
     load()
     sort()
 }
 
 func load() {
     if let fileLocation = Bundle.main.url(forResource: "riderList", withExtension: "json") {
         
         do{
             let data = try Data(contentsOf: fileLocation)
             let jsonDecoder = JSONDecoder()
             let dataFromJson = try jsonDecoder.decode([riderData].self, from: data)
             self.RiderData=dataFromJson
         }
         catch{
             print(error)
         }
     }
 }
 
 func sort(){
    self.RiderData = self.RiderData.sorted(by: { $0.rider_id < $1.rider_id})
 }
}
