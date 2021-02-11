//
//  CharactersOperationsRepository.swift
//  WebService
//
//  Created by Oguz Tandogan on 24.12.2020.
//

import Foundation
import RxSwift

public class CharactersOperationsRepository: CharactersOperationsRepositoryInterface {
    
    private let apiRemote: CharactersOperationsRemoteInterface!
    
    public init(apiRemote: CharactersOperationsRemoteInterface) {
        self.apiRemote = apiRemote
    }

    public func getCharacters(params: CharactersRequestModel) -> Single<CharactersResponseModel> {
        return apiRemote.getCharacters(params: params)
    }

}
