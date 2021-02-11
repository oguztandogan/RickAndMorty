//
//  CharacterDetailsRequestModel.swift
//  WebService
//
//  Created by Oguz Tandogan on 14.12.2020.
//

import Foundation

public class CharacterDetailsRequestModel: CodableDataProtocol {

    private(set) var characterId: String?

    public init(characterId: String?) {
        self.characterId = characterId
    }
    
    public enum CodingKeys: String, CodingKey {

        case characterId = "i"
    }
}

