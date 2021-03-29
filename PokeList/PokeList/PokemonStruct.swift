//
//  PokemonStruct.swift
//  PokeList
//
//  Created by Estudiantes on 3/14/21.
//

import Foundation

struct PokemonAPIList: Decodable {
    var results: [PokemonListEntry]
}
struct PokemonListEntry: Decodable {
    //public let id: String
    public let name: String
    public let url:String
}
