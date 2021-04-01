//
//  NetworkModels.swift
//  labs-ios-starter
//
//  Created by Jarren Campos on 2/15/21.
//  Copyright © 2021 Spencer Curtis. All rights reserved.
//

import Foundation

/// Struct to use when encoding data for api POST calls
struct PostParams: Encodable {
    let city: String
    let state: String
}

/// Information to display a city's walkability score
struct Walkability: Decodable {
    let walkability: Int
}


// MARK: - City Data
struct City: Codable {
    let city, state: String?
}

struct CityData : Codable {
    let airQualityIndex : String?
    let crime : String?
    let diversityIndex : Int?
    let latitude : Float?
    let livability : Int?
    let longitude : Float?
    let population : Int?
    let rentalPrice : Int?
    let walkability : Int?
    
    enum CodingKeys: String, CodingKey {
        case airQualityIndex = "air_quality_index"
        case crime = "crime"
        case diversityIndex = "diversity_index"
        case latitude = "latitude"
        case livability = "livability"
        case longitude = "longitude"
        case population = "population"
        case rentalPrice = "rental_price"
        case walkability = "walkability"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        airQualityIndex = try values.decodeIfPresent(String.self, forKey: .airQualityIndex)
        crime = try values.decodeIfPresent(String.self, forKey: .crime)
        diversityIndex = try values.decodeIfPresent(Int.self, forKey: .diversityIndex)
        latitude = try values.decodeIfPresent(Float.self, forKey: .latitude)
        livability = try values.decodeIfPresent(Int.self, forKey: .livability)
        longitude = try values.decodeIfPresent(Float.self, forKey: .longitude)
        population = try values.decodeIfPresent(Int.self, forKey: .population)
        rentalPrice = try values.decodeIfPresent(Int.self, forKey: .rentalPrice)
        walkability = try values.decodeIfPresent(Int.self, forKey: .walkability)
    }
}

/// TODO: other decodable data to use
//Add Weather API Endpoint
//Add Employment Opps Endpoint
//Add livability Endpoint
