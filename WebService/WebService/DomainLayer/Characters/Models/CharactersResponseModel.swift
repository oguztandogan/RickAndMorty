//
//  CharactersResponseModel.swift
//  WebService
//
//  Created by Oguz Tandogan on 24.12.2020.
//

import Foundation

public class CharactersResponseModel: BaseResponseProtocol {
    
    public var error: BaseErrorResponse?
    public let info: Info?
    public let results: [CharactersListResponseModel]?
    
    public init(info: Info?,
                results: [CharactersListResponseModel]?) {
        self.info = info
        self.results = results
    }

        private enum CodingKeys: String, CodingKey {
            case info = "info"
            case results = "results"
        }
}
