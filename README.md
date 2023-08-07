# PokemonAPI

## Swift support iOS 13.0.0 *

## Usage
### Quick Start

```swift
import PokemonAPI

class MyViewController: UIViewController {
    
    private let pokemonAPI = PokemonAPI()
    
    func searchPokemon(withText text: String){
        
        Task{
            do{
                let model = try await pokemonAPI.getPokemon(id: text)
            }catch {
                print("Error")
            }
           
        }
    }
    
    func getPokemons(from: Int, to: Int) async -> [PokemonResponseModel]{
        
        var model : [PokemonResponseModel] = []
        
        for i in from...to {
            
            do{
                
                let pokemon = try await pokemonAPI.getPokemon(id: "\(i)")
                model.append(pokemon)
                
            }catch{
                print("Error")
            }

        }
        
        return model
    }
```
