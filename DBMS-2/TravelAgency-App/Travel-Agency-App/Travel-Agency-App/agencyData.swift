//
//  agencyData.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import Foundation
struct agencyData: Codable {
    var agency_id: Int
    var agency_name: String
    var agency_type: String
    var agency_address: String
    var agency_description: String
    var agency_email: String
    var agency_phone: String
}

