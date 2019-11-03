//
//  WeatherAppTests.swift
//  WeatherAppTests
//
//  Created by My profile on 03.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import XCTest
@testable import WeatherApp

class WeatherAppTests: XCTestCase {
    
    var chooseCityViewModel: ChooseCityViewModel!

    override func setUp() {
        chooseCityViewModel = ChooseCityViewModel()
    }

    override func tearDown() {
        chooseCityViewModel = nil
    }

    func testAllCitiesCount() {
        XCTAssert(chooseCityViewModel.allCities.count == 8)
    }
    
    func testChooseIndex() {
        chooseCityViewModel.selectedCityAtIndex = { city, index in
            XCTAssert(city == "London" && index == 0)
        }
        chooseCityViewModel.select(indexRow: 0)
    }
    
    func testChooseIncorrectIndex() {
        chooseCityViewModel.selectedCityAtIndex = { city, index in
            XCTAssert(city == "" && index == -1)
        }
        chooseCityViewModel.select(indexRow: -1)
    }
}
