//
//  WeatherAPIService.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import Foundation
import Alamofire

typealias DownloadComplete = () -> ()

final class WeatherAPIService {
    
    func downloadForecastWeather(completion: @escaping (WeatherList?) -> Void) {
        Alamofire.request(APIConstants.apiURL).responseData { (response) in
            
            guard response.result.error == nil else {
                // got an error while getting the weather details, need to handle it
                print(response.result.error!)
                return
            }
            
            guard let responseData = response.data else {
                print(response.result.error!)
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let results = try decoder.decode(WeatherList.self, from: responseData)
                completion(results)
            } catch let error {
                print("Unable to decode. Error is: \(error)")
                completion(nil)
            }
        }
    }
}
