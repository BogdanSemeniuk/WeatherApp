//
//  HTTPParameters.swift
//  WeatherApp
//
//  Created by My profile on 10.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import Foundation

class HTTPParameters {
    let json: [String: Any]
    let type: HTTPParametersType
    
    init(json: [String: Any], type: HTTPParametersType) {
        self.json = json
        self.type = type
    }
}
