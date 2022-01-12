//
//  dataLoaderb.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
public class dataLoaderb {
   @Published var BookingData = [bookingData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "bookingyList", withExtension: "json") {
            
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([bookingData].self, from: data)
                self.BookingData=dataFromJson
            }
            catch{
                print(error)
            }
        }
    }
    
    func sort(){
        self.BookingData = self.BookingData.sorted(by: { $0.booking_id < $1.booking_id})
    }
}
