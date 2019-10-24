//
//  City.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import Foundation

public struct City: Decodable {
    public let id: Int
    public let name: String
    public let country: String
    public let coordinate: Coordinate
}
