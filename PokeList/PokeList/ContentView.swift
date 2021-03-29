//
//  ContentView.swift
//  PokeList
//
//  Created by Estudiantes on 3/14/21.
//

import SwiftUI

struct ContentView: View {
 

//@State private var pokemonData = [Pokemon]()
    @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {
        /*List(networkingManager.pokemonList.results, id: \.url) { pokemon in
            Text(pokemon.name.capitalized)
        }*/
    NavigationView{List(networkingManager.pokemonList.results, id: \.url) { item in
        NavigationLink(destination: PokemonDetail(pokemon: item)) {
            
            HStack() {
                Text(item.name.capitalized)
                    .font(.headline)
                Text(item.url)
                    .font(.footnote)
            }
            
        }.navigationBarTitle("Pokemon List")
        
    }
    
    }
    }
}
/*
extension ContentView
{
    func loadData() {
        
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon") else {
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data {
                print(data)
                if let response_obj = try? JSONDecoder().decode([Pokemon].self, from: data) {
                    
                    DispatchQueue.main.async {
                        self.pokemonData = response_obj
                    }
                }
            }
            
        }.resume()
    }
}*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
