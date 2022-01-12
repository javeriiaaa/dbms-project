//
//  bookingData.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
struct bookingData: Codable {
    var booking_id: Int
    var booking_date: String
    var booking_title: String
    var booking_type: String
    var booking_description: String
    var customer_id: Int
    
}
