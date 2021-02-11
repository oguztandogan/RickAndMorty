//
//  CharacterDetailsOperationsRepositoryInterface.swift
//  WebService
//
//  Created by Oguz Tandogan on 31.01.2021.
//

import Foundation
import RxSwift

public protocol CharacterDetailsOperationsRepositoryInterface {
    
    func getCharacterDetails(params: CharacterDetailsRequestModel) -> Single<CharacterDetailsResponseModel>
}
