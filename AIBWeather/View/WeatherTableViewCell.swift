//
//  WeatherTableViewCell.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import Foundation
import UIKit

class WeatherTableViewCell: UITableViewCell {
    @IBOutlet weak var forecastTemp: UILabel!
    @IBOutlet weak var forecastDay: UILabel!
    @IBOutlet weak var forecaseImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(forecastData: WeatherResult) {
        let rawDate = Date(timeIntervalSince1970: TimeInterval(forecastData.dt))
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        forecastDay.text = "\(rawDate.dayOfTheWeek())"
        forecastTemp.text = String(format: "%.0f", forecastData.attributes.temperature - 273.15)
//        forecaseImage.image = getWeatherImage(forecastData.weather[0].iconName.rawValue)
        forecaseImage.image = getWeatherImage(imageType: forecastData.weather[0].iconName)
    }
    
    func getWeatherImage(imageType: WeatherIconType) -> UIImage {
        switch imageType  {
        case .clearSkyDay, .clearSkyNight :
            return UIImage(named:"Clear")!
        case .fewCloudsDay, .fewCloudsNight, .scatteredCloudsDay, .scatteredCloudsNight :
            return UIImage(named:"Clouds")!
        case .brokenCloudsDay, .brokenCloudsNight :
            return UIImage(named:"Partially Cloudy")!
        case .showerRainDay, .showerRainNight :
            return UIImage(named:"Rain Mini")!
        case .rainDay, .rainNight :
            return UIImage(named:"Rain")!
        case .thunderstormDay, .thunderstormNigth :
             return UIImage(named:"Thunderstorm")!
        default:
            return UIImage(named:"Clear Mini")!
        }
    }
}
