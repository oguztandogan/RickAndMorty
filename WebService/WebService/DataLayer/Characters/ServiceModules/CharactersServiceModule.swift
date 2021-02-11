//
//  CharactersServiceModule.swift
//  WebService
//
//  Created by Oguz Tandogan on 24.12.2020.
//

import Foundation

public class CharactersServiceModule: ApiServiceProvider<CharactersRequestModel> {
    
    init(request: CharactersRequestModel) {
        super.init(method: .get, path: APIPaths.characters.value, pathType: .baseHost, isAuthRequested: true, data: request)
    }
}
