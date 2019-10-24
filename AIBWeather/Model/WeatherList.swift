//
//  WeatherList.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import Foundation

public struct WeatherList: Codable {
    public let message: Double
    public let cod: String  
    public let count: Int
    public let results: [WeatherResult]?
    
    private enum CodingKeys: String, CodingKey {
        case message
        case cod
        case count = "cnt"
        case results = "list"
    }
}
