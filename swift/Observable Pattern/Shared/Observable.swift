//
//  Observable.swift
//  Observable Pattern
//
//  Created by Matthew Young on 10/28/22.
//

import Foundation
import Combine

struct Forecast {
    var rainPercent: Int
    var humidityPercent: Int
    var temperature: Int
}

protocol WeatherData: ObservableObject {
    func update(forecast: Forecast)
    
    var rainPercent: Int { get set }
    var humidityPercent: Int { get set }
    var temperature: Int { get set }
}

func generateData() -> Forecast {
    return Forecast(
        rainPercent: Int.random(in: 1...100),
        humidityPercent: Int.random(in: 1...100),
        temperature: Int.random(in: 31...90)
    )
}

class WeatherStation: WeatherData {
    
    func update(forecast: Forecast) {
        rainPercent = forecast.rainPercent
        humidityPercent = forecast.humidityPercent
        temperature = forecast.temperature
    }
    
    @Published var rainPercent: Int = Int.random(in: 1...100)
    @Published var humidityPercent: Int = Int.random(in: 1...100)
    @Published var temperature: Int = Int.random(in: 31...90)
}
