//
//  Wind.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import Foundation

public struct Wind: Codable {
    public let speed: Double
    public let degrees: Double?
    
    private enum CodingKeys: String, CodingKey {
        case speed
        case degrees = "deg"
    }
    
}
