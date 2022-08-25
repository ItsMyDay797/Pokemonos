//
//  PokemonData.swift
//  Pokemon
//
//  Created by Марк Русаков on 25.08.22.
//

import Foundation

struct PokemonData : Codable {
    var results : [Results]!
}

struct Results : Codable {
    var name: String!
}
