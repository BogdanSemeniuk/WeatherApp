//
//  ChooseCityViewModel.swift
//  WeatherApp
//
//  Created by My profile on 03.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import Foundation

final class ChooseCityViewModel {
    let allCities = City.allCities
    lazy var city = allCities.first ?? ""
    
    func index(of city: String) throws -> Int {
        guard let index = allCities.firstIndex(of: city) else { throw CitiesError.cityIsUnknown }
        return index
    }
    
    func selectCity(at index: Int) throws -> String {
        guard index >= 0, index <= allCities.count - 1 else { throw CitiesError.indexOutOfRange}
        city = allCities[index]
        return city
    }
}
