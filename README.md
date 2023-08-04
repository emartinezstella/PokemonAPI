# PokemonAPI

## Swift support iOS 13.0.0 *

## Usage
### Quick Start

```swift
import PokemonAPI

class MyViewController: UIViewController {
    
    private let pokemonAPI = PokemonAPI()
    
    func getPokemon(id: String) async throws -> PokemonResponseModel{
    
            do{
                
                let data = try await pokemonAPI.getPokemon(id: id)
                
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                
                return try jsonDecoder.decode(PokemonResponseModel.self, from: data)
                
            }catch let error as APIClientError{
                
                print(error.rawValue)
                
                throw error
                
            }
            
    }
```
