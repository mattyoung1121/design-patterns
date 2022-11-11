//
//  ContentView.swift
//  Shared
//
//  Created by Matthew Young on 10/25/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var currentLocation = WeatherStation()
    @ObservedObject var farAwayLocation = WeatherStation()
    
    var body: some View {
        ZStack {
            Color(CGColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00))
                .ignoresSafeArea()
            
            VStack {
                Button("Update Current Location Weather Data") {
                    currentLocation.update(forecast: generateData())
                }
                ForecastView(weatherData: currentLocation)
                
                Button("Update Far Away Location Weather Data") {
                    farAwayLocation.update(forecast: generateData())
                }
                ForecastView(weatherData: farAwayLocation)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
