//
//  ViewController.swift
//  AIBWeather
//
//  Created by Chala on 24/10/19.
//  Copyright © 2019 Ashoka Reddy Kalvapalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var weatherData: WeatherList?
    var weatherArray: [WeatherResult]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let apiService = WeatherAPIService()
        apiService.downloadForecastWeather { results in
            self.weatherData = results
            self.weatherArray = self.weatherData?.results
            
            self.tableView.reloadData()
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell") as! WeatherTableViewCell
        
        guard let weatherData = weatherArray else {
            return cell
        }
        
        cell.configureCell(forecastData: weatherData[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherArray?.count ?? 0
    }
}

