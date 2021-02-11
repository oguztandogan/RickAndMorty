//
//  CharacterDetailsServiceModule.swift
//  WebService
//
//  Created by Oguz Tandogan on 31.01.2021.
//

import Foundation

public class CharacterDetailsServiceModule: ApiServiceProvider<CharacterDetailsRequestModel> {
    
    init(request: CharacterDetailsRequestModel) {
        super.init(method: .get, path: "", pathType: .baseHost, isAuthRequested: true, data: request)
    }
}
