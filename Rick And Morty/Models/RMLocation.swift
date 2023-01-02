//
//  RMLocation.swift
//  Rick And Morty
//
//  Created by Emerson Balahan Varona on 2/1/23.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
