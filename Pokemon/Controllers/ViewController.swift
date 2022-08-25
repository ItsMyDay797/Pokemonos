//
//  ViewController.swift
//  Pokemon
//
//  Created by Марк Русаков on 25.08.22.
//

import UIKit

let urlString = "https://pokeapi.co/api/v2/pokemon/"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
      
       print("works") //testing
        
    }
   
    func fetchPokemonData(completionHandler: @escaping ([PokemonData]) -> Void) {
        
        let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else {return}

            do{
                let urlData = try JSONDecoder().decode([PokemonData].self, from: data)
                
                completionHandler(urlData)
            }
            catch {
                let error = error
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}

