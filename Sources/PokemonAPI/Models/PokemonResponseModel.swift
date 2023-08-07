//
//  PokemonResponseModel.swift
//  Pokedex
//
//  Created by Eduardo Martinez Ibarra on 13/07/23.
//

import Foundation

struct PokemonResponseModel: Codable {
    
    let id: Int?
    let name: String?
    let baseExperience, height: Int?
    let isDefault: Bool?
    let order, weight: Int?
    let abilities: [Ability]?
    let forms: [Species]?
    let gameIndices: [GameIndex]?
    let heldItems: [HeldItem]?
    let locationAreaEncounters: String?
    let moves: [Move]?
    let species: Species?
    let sprites: Sprites?
    let stats: [Stat]?
    let types: [TypeElement]?
    let pastTypes: [PastType]?

    enum CodingKeys: String, CodingKey {
        case id, name
        case baseExperience
        case height
        case isDefault
        case order, weight, abilities, forms
        case gameIndices
        case heldItems
        case locationAreaEncounters
        case moves, species, sprites, stats, types
        case pastTypes
    }
}

// MARK: - Ability
struct Ability: Codable {
    let isHidden: Bool?
    let slot: Int?
    let ability: Species?

    enum CodingKeys: String, CodingKey {
        case isHidden
        case slot, ability
    }
}

// MARK: - Species
struct Species: Codable {
    let name: String?
    let url: String?
}

// MARK: - GameIndex
struct GameIndex: Codable {
    let gameIndex: Int?
    let version: Species?

    enum CodingKeys: String, CodingKey {
        case gameIndex
        case version
    }
}

// MARK: - HeldItem
struct HeldItem: Codable {
    let item: Species?
    let versionDetails: [VersionDetail]?

    enum CodingKeys: String, CodingKey {
        case item
        case versionDetails
    }
}

// MARK: - VersionDetail
struct VersionDetail: Codable {
    let rarity: Int?
    let version: Species?
}

// MARK: - Move
struct Move: Codable {
    let move: Species?
    let versionGroupDetails: [VersionGroupDetail]?

    enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails
    }
}

// MARK: - VersionGroupDetail
struct VersionGroupDetail: Codable {
    let levelLearnedAt: Int?
    let versionGroup, moveLearnMethod: Species?

    enum CodingKeys: String, CodingKey {
        case levelLearnedAt
        case versionGroup
        case moveLearnMethod
    }
}

// MARK: - PastType
struct PastType: Codable {
    let generation: Species?
    let types: [TypeElement]?
}

// MARK: - TypeElement
struct TypeElement: Codable {
    let slot: Int?
    let type: Species?
}

// MARK: - GenerationV
struct GenerationV: Codable {
    let blackWhite: Sprites?

    enum CodingKeys: String, CodingKey {
        case blackWhite
    }
}

// MARK: - GenerationIv
struct GenerationIv: Codable {
    let diamondPearl, heartgoldSoulsilver, platinum: Sprites?

    enum CodingKeys: String, CodingKey {
        case diamondPearl
        case heartgoldSoulsilver
        case platinum
    }
}

// MARK: - Versions
struct Versions: Codable {
    let generationI: GenerationI?
    let generationIi: GenerationIi?
    let generationIii: GenerationIii?
    let generationIv: GenerationIv?
    let generationV: GenerationV?
    let generationVi: [String: Home]?
    let generationVii: GenerationVii?
    let generationViii: GenerationViii?

    enum CodingKeys: String, CodingKey {
        case generationI
        case generationIi
        case generationIii
        case generationIv
        case generationV
        case generationVi
        case generationVii
        case generationViii
    }
}

// MARK: - Sprites
class Sprites: Codable {
    
    let backDefault: String?
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?
    let other: Other?
    let versions: Versions?
    let animated: Sprites?

    enum CodingKeys: String, CodingKey {
        case backDefault
        case backFemale
        case backShiny
        case backShinyFemale
        case frontDefault
        case frontFemale
        case frontShiny
        case frontShinyFemale
        case other, versions, animated
    }

}

// MARK: - GenerationI
struct GenerationI: Codable {
    let redBlue, yellow: RedBlue?

    enum CodingKeys: String, CodingKey {
        case redBlue
        case yellow
    }
}

// MARK: - RedBlue
struct RedBlue: Codable {
    let backDefault, backGray, frontDefault, frontGray: String?

    enum CodingKeys: String, CodingKey {
        case backDefault
        case backGray
        case frontDefault
        case frontGray
    }
}

// MARK: - GenerationIi
struct GenerationIi: Codable {
    let crystal, gold, silver: Crystal?
}

// MARK: - Crystal
struct Crystal: Codable {
    let backDefault, backShiny, frontDefault, frontShiny: String?

    enum CodingKeys: String, CodingKey {
        case backDefault
        case backShiny
        case frontDefault
        case frontShiny
    }
}

// MARK: - GenerationIii
struct GenerationIii: Codable {
    let emerald: Emerald?
    let fireredLeafgreen, rubySapphire: Crystal?

    enum CodingKeys: String, CodingKey {
        case emerald
        case fireredLeafgreen
        case rubySapphire
    }
}

// MARK: - Emerald
struct Emerald: Codable {
    let frontDefault, frontShiny: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontShiny
    }
}

// MARK: - Home
struct Home: Codable {
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontFemale
        case frontShiny
        case frontShinyFemale
    }
}

// MARK: - GenerationVii
struct GenerationVii: Codable {
    let icons: DreamWorld?
    let ultraSunUltraMoon: Home?

    enum CodingKeys: String, CodingKey {
        case icons
        case ultraSunUltraMoon
    }
}

// MARK: - DreamWorld
struct DreamWorld: Codable {
    let frontDefault: String?
    let frontFemale: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontFemale
    }
}

// MARK: - GenerationViii
struct GenerationViii: Codable {
    let icons: DreamWorld?
}

// MARK: - Other
struct Other: Codable {
    let dreamWorld: DreamWorld?
    let home: Home?
    let officialArtwork: OfficialArtwork?

    enum CodingKeys: String, CodingKey {
        case dreamWorld
        case home
        case officialArtwork
    }
}

// MARK: - OfficialArtwork
struct OfficialArtwork: Codable {
    let frontDefault: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault
    }
}

// MARK: - Stat
struct Stat: Codable {
    let baseStat, effort: Int?
    let stat: Species?

    enum CodingKeys: String, CodingKey {
        case baseStat
        case effort, stat
    }
}