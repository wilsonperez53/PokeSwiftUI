//
//  PokemonDetail.swift
//  PokeList
//
//  Created by Estudiantes on 3/14/21.
//

import SwiftUI
import URLImage
struct PokemonDetail: View {
    var pokemon: PokemonListEntry
   
    var body: some View {
        let array = pokemon.url.components(separatedBy: "/")
        //print(array.last)
        VStack(alignment: .leading, spacing: 10) {
            let url = URL(string: "https://pokeres.bastionbot.org/images/pokemon/" + array[array.count - 2] + ".png")
            URLImage(url: url!, content: { image in
                image
                    .resizable()
                    .frame(width: 256.0, height:256.0)
            })
            Text(pokemon.name)
                .font(.headline)
            Text(pokemon.url)
                .font(.footnote)
            
        }
    }
}
