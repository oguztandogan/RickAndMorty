//
//  CharacterDetailsOperationsRepository.swift
//  WebService
//
//  Created by Oguz Tandogan on 31.01.2021.
//

import Foundation
import RxSwift

public class CharacterDetailsOperationsRepository: CharacterDetailsOperationsRepositoryInterface {
    
    private let apiRemote: CharacterDetailsOperationsRemoteInterface!
    
    public init(apiRemote: CharacterDetailsOperationsRemoteInterface) {
        self.apiRemote = apiRemote
    }

    public func getCharacterDetails(params: CharacterDetailsRequestModel) -> Single<CharacterDetailsResponseModel> {
        return apiRemote.getCharacterDetails(params: params)
    }

}
