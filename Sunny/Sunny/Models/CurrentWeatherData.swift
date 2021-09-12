//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by KONSTANTIN TISHCHENKO on 11.09.2021.
//  Copyright © 2021 Konstantin Tishchenko. All rights reserved.
//


import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
