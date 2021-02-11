//
//  CharactersOperationsRemote.swift
//  WebService
//
//  Created by Oguz Tandogan on 24.12.2020.
//

import Foundation
import RxSwift

public class CharactersOperationsRemote: CharactersOperationsRemoteInterface {
    
    private let apiManager: HttpClientInterface!
    private let service: CharactersServices!

    public init(apiManager: HttpClientInterface, service: CharactersServices) {
        self.apiManager = apiManager
        self.service = service
    }

    public func getCharacters(params: CharactersRequestModel) -> Single<CharactersResponseModel> {
        return apiManager.executeRequest(urlRequestConvertible: service.getCharactersParsedResultModule(params: params))
    }

    deinit {
        print("DEINIT CharacterDetailsOperationsRemote")
    }
}
