//
//  NetworkingManager.swift
//  PokeList
//
//  Created by Estudiantes on 3/23/21.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager: ObservableObject {
    
    @Published var pokemonList = PokemonAPIList(results: [])
    
    
    init() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=20") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(PokemonAPIList.self, from: data)
            print(pokemonList)
            DispatchQueue.main.async {
                self.pokemonList = pokemonList
            }
        }.resume()
    }
}
