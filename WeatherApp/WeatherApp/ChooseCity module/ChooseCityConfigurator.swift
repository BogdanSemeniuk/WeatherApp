//
//  ChooseCityConfigurator.swift
//  WeatherApp
//
//  Created by My profile on 03.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import Foundation

final class ChooseCityConfigurator {
    func configure(controller: ChooseCityViewController) {
        controller.chooseCityViewModel = ChooseCityViewModel()
    }
}
