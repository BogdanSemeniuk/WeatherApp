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
    var selectedCityAtIndex: ((String, Int) -> Void)?
    
    func select(indexRow: Int) {
        selectedCityAtIndex?(city(at: indexRow) ?? "", indexRow)
    }
    
    private func city(at index: Int) -> String? {
        guard index >= 0, index <= allCities.count else { return nil }
        return allCities[index].name
    }
}
