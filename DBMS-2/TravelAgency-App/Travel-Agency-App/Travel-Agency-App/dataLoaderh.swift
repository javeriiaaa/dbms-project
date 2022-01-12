//
//  dataLoaderh.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
public class dataLoaderh {
   @Published var HotelData = [hotelData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "hotelList", withExtension: "json") {
            
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([hotelData].self, from: data)
                self.HotelData=dataFromJson
            }
            catch{
                print(error)
            }
        }
    }
    
    func sort(){
        self.HotelData = self.HotelData.sorted(by: { $0.hotel_id < $1.hotel_id})
    }
}
