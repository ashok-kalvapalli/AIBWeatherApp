//
//  WeatherAttributes.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import Foundation

public struct WeatherAttributes: Codable {
    public let temperature: Double
    public let tempMimimum: Double
    public let tempMaximum: Double
    public let pressure: Double
    public let humidity: Double
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case tempMimimum = "temp_min"
        case tempMaximum = "temp_max"
        case pressure
        case humidity
    }
}
