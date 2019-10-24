//
//  WeatherResult.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import Foundation

public struct WeatherResult: Codable {
    public let weather: [Weather]
    public let attributes: WeatherAttributes
    public let wind: Wind
    public let dt: Int
    public let date: String

    private enum CodingKeys: String, CodingKey {
        case weather
        case attributes = "main"
        case wind
        case dt
        case date = "dt_txt"
    }
}
