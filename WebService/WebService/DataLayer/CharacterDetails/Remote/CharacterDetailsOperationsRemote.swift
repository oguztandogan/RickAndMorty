//
//  CharacterDetailsOperationsRemote.swift
//  WebService
//
//  Created by Oguz Tandogan on 31.01.2021.
//

import Foundation
import RxSwift

public class CharacterDetailsOperationsRemote: CharacterDetailsOperationsRemoteInterface {
    
    private let apiManager: HttpClientInterface!
    private let service: CharacterDetailsServices!

    public init(apiManager: HttpClientInterface, service: CharacterDetailsServices) {
        self.apiManager = apiManager
        self.service = service
    }

    public func getCharacterDetails(params: CharacterDetailsRequestModel) -> Single<CharacterDetailsResponseModel> {
        return apiManager.executeRequest(urlRequestConvertible: service.getCharacterDetailsParsedResultModule(params: params))
    }

    deinit {
        print("DEINIT CharacterDetailsOperationsRemote")
    }
}
