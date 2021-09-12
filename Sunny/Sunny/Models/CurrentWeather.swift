//
//  CurrentWeather.swift
//  Sunny
//
//  Created by KONSTANTIN TISHCHENKO on 11.09.2021.
//  Copyright © 2021 Konstantin Tishchenko. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    
    let feelLikeTemperature: Double
    var feelLikeTemperatureString: String {
        return String(format: "%.0f", feelLikeTemperature) // 0f - 0 знаков после точки
    }
    
    let conditionCode: Int
    
    var systemIconNameString: String {
        switch conditionCode {
        case 200...232: return "cloud.bolt.rain.fill"
        case 300...321: return "cloud.drizzle.fill"
        case 500...531: return "cloud.rain.fill"
        case 600...622: return "cloud.snow.fill"
        case 701...781: return "smoke.fill"
        case 800: return "sun.min.fill"
        case 801...804: return "cloud.fill"
        default:
            return "nosign"
        }
    }
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelLikeTemperature = currentWeatherData.main.feelsLike
        conditionCode = currentWeatherData.weather.first!.id
    }
}
