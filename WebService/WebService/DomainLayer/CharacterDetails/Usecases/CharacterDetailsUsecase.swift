//
//  GetBasicTokenUsecase.swift
//  WebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import RxSwift

public class CharacterDetailsUsecase: SingleUseCase<CharacterDetailsRequestModel, CharacterDetailsResponseModel> {
    
    private let repository: CharacterDetailsOperationsRepositoryInterface!
    
    public init(repository: CharacterDetailsOperationsRepositoryInterface) {
        self.repository = repository
    }
    
    override func generateUseCase(parameter: CharacterDetailsRequestModel) -> Single<CharacterDetailsResponseModel>? {
        return repository.getCharacterDetails(params: parameter)
    }
}
