import Foundation

enum APIClientError: String, Error{
    case error400 = "Error 400"
}

@available(macOS 12.0, *)
@available(iOS 13.0.0, *)

public class PokemonAPI {
    
    public init(){}
    
    public func getPokemon(text: String) async throws -> Data {
        
        let  url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(text.lowercased())/")!
        let (data, response) = try! await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw APIClientError.error400
        }
        
        return data
        
    }
    
   public func getPokemon(withId id: Int) async throws -> Data {
        
        let  url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)/")!
        let (data, response) = try! await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw APIClientError.error400
        }
    
        return data
    }
    
}
