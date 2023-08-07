//
//  PokemonResponseModel.swift
//  Pokedex
//
//  Created by Eduardo Martinez Ibarra on 13/07/23.
//

import Foundation

public struct PokemonResponseModel: Codable {
    
    public let id: Int?
    public let name: String?
    public let baseExperience, height: Int?
    public let isDefault: Bool?
    public let order, weight: Int?
    public let abilities: [Ability]?
    public let forms: [Species]?
    public let gameIndices: [GameIndex]?
    public let heldItems: [HeldItem]?
    public let locationAreaEncounters: String?
    public let moves: [Move]?
    public let species: Species?
    public let sprites: Sprites?
    public let stats: [Stat]?
    public let types: [TypeElement]?
    public let pastTypes: [PastType]?

    public enum CodingKeys: String, CodingKey {
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
public struct Ability: Codable {
    public let isHidden: Bool?
    public let slot: Int?
    public let ability: Species?

    public enum CodingKeys: String, CodingKey {
        case isHidden
        case slot, ability
    }
}

// MARK: - Species
public struct Species: Codable {
    public let name: String?
    public let url: String?
}

// MARK: - GameIndex
public struct GameIndex: Codable {
    public let gameIndex: Int?
    public let version: Species?

    public enum CodingKeys: String, CodingKey {
        case gameIndex
        case version
    }
}

// MARK: - HeldItem
public struct HeldItem: Codable {
    public let item: Species?
    public let versionDetails: [VersionDetail]?

    public enum CodingKeys: String, CodingKey {
        case item
        case versionDetails
    }
}

// MARK: - VersionDetail
public struct VersionDetail: Codable {
    public let rarity: Int?
    public let version: Species?
}

// MARK: - Move
public struct Move: Codable {
    public let move: Species?
    public let versionGroupDetails: [VersionGroupDetail]?

    public enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails
    }
}

// MARK: - VersionGroupDetail
public struct VersionGroupDetail: Codable {
    public let levelLearnedAt: Int?
    public let versionGroup, moveLearnMethod: Species?

    public enum CodingKeys: String, CodingKey {
        case levelLearnedAt
        case versionGroup
        case moveLearnMethod
    }
}

// MARK: - PastType
public struct PastType: Codable {
    public let generation: Species?
    public let types: [TypeElement]?
}

// MARK: - TypeElement
public struct TypeElement: Codable {
    public let slot: Int?
    public let type: Species?
}

// MARK: - Sprites
public struct Sprites: Codable {
    
    public let backDefault: String?
    public let backFemale: String?
    public let backShiny: String?
    public let backShinyFemale: String?
    public let frontDefault: String?
    public let frontFemale: String?
    public let frontShiny: String?
    public let frontShinyFemale: String?
    public let other: Other?

    public enum CodingKeys: String, CodingKey {
        case backDefault
        case backFemale
        case backShiny
        case backShinyFemale
        case frontDefault
        case frontFemale
        case frontShiny
        case frontShinyFemale
        case other
    }

}

// MARK: - GenerationI
public struct GenerationI: Codable {
    public let redBlue, yellow: RedBlue?

    public enum CodingKeys: String, CodingKey {
        case redBlue
        case yellow
    }
}

// MARK: - RedBlue
public struct RedBlue: Codable {
    public let backDefault, backGray, frontDefault, frontGray: String?

    public enum CodingKeys: String, CodingKey {
        case backDefault
        case backGray
        case frontDefault
        case frontGray
    }
}

// MARK: - GenerationIi
public struct GenerationIi: Codable {
    public let crystal, gold, silver: Crystal?
}

// MARK: - Crystal
public struct Crystal: Codable {
    public let backDefault, backShiny, frontDefault, frontShiny: String?

    public enum CodingKeys: String, CodingKey {
        case backDefault
        case backShiny
        case frontDefault
        case frontShiny
    }
}

// MARK: - GenerationIii
public struct GenerationIii: Codable {
    public let emerald: Emerald?
    public let fireredLeafgreen, rubySapphire: Crystal?

    public enum CodingKeys: String, CodingKey {
        case emerald
        case fireredLeafgreen
        case rubySapphire
    }
}

// MARK: - Emerald
public struct Emerald: Codable {
    public let frontDefault, frontShiny: String?

    public enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontShiny
    }
}

// MARK: - Home
public struct Home: Codable {
    public let frontDefault: String?
    public let frontFemale: String?
    public let frontShiny: String?
    public let frontShinyFemale: String?

    public enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontFemale
        case frontShiny
        case frontShinyFemale
    }
}

// MARK: - GenerationVii
public struct GenerationVii: Codable {
    public let icons: DreamWorld?
    public let ultraSunUltraMoon: Home?

    public enum CodingKeys: String, CodingKey {
        case icons
        case ultraSunUltraMoon
    }
}

// MARK: - DreamWorld
public struct DreamWorld: Codable {
    public let frontDefault: String?
    public let frontFemale: String?

    public enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontFemale
    }
}

// MARK: - GenerationViii
public struct GenerationViii: Codable {
    public let icons: DreamWorld?
}

// MARK: - Other
public struct Other: Codable {
    public let dreamWorld: DreamWorld?
    public let home: Home?
    public let officialArtwork: OfficialArtwork?

    public enum CodingKeys: String, CodingKey {
        case dreamWorld
        case home
        case officialArtwork
    }
}

// MARK: - OfficialArtwork
public struct OfficialArtwork: Codable {
    public let frontDefault: String?

    public enum CodingKeys: String, CodingKey {
        case frontDefault
    }
}

// MARK: - Stat
public struct Stat: Codable {
    public let baseStat, effort: Int?
    public let stat: Species?

    public enum CodingKeys: String, CodingKey {
        case baseStat
        case effort, stat
    }
}
