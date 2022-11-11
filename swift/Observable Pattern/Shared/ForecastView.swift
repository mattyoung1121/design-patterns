//
//  ForecastView.swift
//  Observable Pattern
//
//  Created by Matthew Young on 10/28/22.
//

import SwiftUI

struct ForecastView: View {
    
    @ObservedObject var weatherData: WeatherStation
    
    var body: some View {
        
        Group {
            VStack {                
                HStack {
                    Text("Chance of rain: \(weatherData.rainPercent)%")
                    Spacer()
                }
                HStack {
                    Text("Humidity: \(weatherData.humidityPercent)%")
                    Spacer()
                }
                HStack {
                    Text("Current temperature: \(weatherData.temperature) degrees")
                    Spacer()
                }
            }
            .padding()
        }
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal)
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(weatherData: WeatherStation())
    }
}
