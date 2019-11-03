//
//  ChooseCityViewModel.swift
//  WeatherApp
//
//  Created by My profile on 03.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import Foundation

final class ChooseCityViewModel {
    let cities = City.allCities
    
    func city(at index: Int) -> String {
        guard index >= 0, index <= cities.count - 1 else { return "" }
        return cities[index]
    }
}
