//
//  CharacterDetailsServices.swift
//  WebService
//
//  Created by Oguz Tandogan on 31.01.2021.
//

import Foundation

public class CharacterDetailsServices {

    public init() {
        
    }
    
    func getCharacterDetailsParsedResultModule(params: CharacterDetailsRequestModel) -> CharacterDetailsServiceModule {
        return CharacterDetailsServiceModule(request: params)
    }
}
