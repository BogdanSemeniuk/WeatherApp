//
//  Request.swift
//  WeatherApp
//
//  Created by My profile on 10.11.2019.
//  Copyright © 2019 Bogdan. All rights reserved.
//

import Foundation

enum Request {
    case weather(cityName: String)
}

extension Request {
    var baseURL: String {
        return Helper.baseURL
    }
    
    var path: String {
        switch self {
        case .weather: return "data/2.5/weather"
        }
    }
    
    var method: HTTPMethodType {
        switch self {
        case .weather: return .get
        }
    }
    
    var parameters: HTTPParameters {
        switch self {
        case let .weather(cityName): return HTTPParameters(json: ["q": cityName, "APPID": Helper.baseURL], type: .query)
        }
    }
}
