//
//  CharactersService.swift
//  WebService
//
//  Created by Oguz Tandogan on 24.12.2020.
//

import Foundation

public class CharactersServices {

    public init() {
        
    }
    
    func getCharactersParsedResultModule(params: CharactersRequestModel) -> CharactersServiceModule {
        return CharactersServiceModule(request: params)
    }
}
