//
//  CharactersOperationsRepositoryInterface.swift
//  WebService
//
//  Created by Oguz Tandogan on 24.12.2020.
//

import Foundation
import RxSwift

public protocol CharactersOperationsRepositoryInterface {
    
    func getCharacters(params: CharactersRequestModel) -> Single<CharactersResponseModel>
}
