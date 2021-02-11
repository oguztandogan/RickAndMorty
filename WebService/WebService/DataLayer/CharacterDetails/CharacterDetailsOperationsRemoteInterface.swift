//
//  CharacterDetailsOperationsRemoteInterface.swift
//  WebService
//
//  Created by Oguz Tandogan on 31.01.2021.
//

import Foundation
import RxSwift

public protocol CharacterDetailsOperationsRemoteInterface {
    
    func getCharacterDetails(params: CharacterDetailsRequestModel) -> Single<CharacterDetailsResponseModel>
}
