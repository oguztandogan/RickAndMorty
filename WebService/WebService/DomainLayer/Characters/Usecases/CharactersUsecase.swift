//
//  CharactersUsecase.swift
//  WebService
//
//  Created by Oguz Tandogan on 24.12.2020.
//

import Foundation
import RxSwift

public class CharactersUsecase: SingleUseCase<CharactersRequestModel, CharactersResponseModel> {
    
    private let repository: CharactersOperationsRepositoryInterface!
    
    public init(repository: CharactersOperationsRepositoryInterface) {
        self.repository = repository
    }
    
    override func generateUseCase(parameter: CharactersRequestModel) -> Single<CharactersResponseModel>? {
        return repository.getCharacters(params: parameter)
    }
}
