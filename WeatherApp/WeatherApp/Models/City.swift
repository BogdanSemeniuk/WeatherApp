//
//  City.swift
//  WeatherApp
//
//  Created by My profile on 03.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import Foundation

struct City {
    let name: String
    
    init(_ cityName: String) {
        self.name = cityName
    }
    
    static let allCities = [City("London"), City("Kiev"), City("New York"), City("Chicago"), City("Lviv"), City("Moscow"), City("Cherkasy"), City("Pekin")]
    
    static func requestName(for city: City) -> String {
        let requestNames = ["London": "City of London",
        "Kiev": "Kiev,ua",
        "New York": "New York County",
        "Chicago": "Chicago,US",
        "Lviv": "Lviv",
        "Moscow": "Moscow,RU",
        "Cherkasy": "Cherkasy",
        "Pekin": "Pekin"]
        return requestNames[city.name] ?? "Unknown city"
    }
}
