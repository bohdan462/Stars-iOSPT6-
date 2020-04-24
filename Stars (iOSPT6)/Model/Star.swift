//
//  Star.swift
//  Stars (iOSPT6)
//
//  Created by Bohdan Tkachenko on 4/23/20.
//  Copyright © 2020 Bohdan Tkachenko. All rights reserved.
//

import Foundation
// Codable protocol has Encodable and Decodable
// Encode: Object -> Data
// Decodable: Data -> Object
struct Star: Codable {
    var name: String
    var distance: Double
}

//MVC - Model - View(Displayinf data) - Controller(managing diff objects)
