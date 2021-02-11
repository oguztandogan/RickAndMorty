//
//  Endpoints.swift
//  WebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import Utilities

typealias PathType = Endpoints.PathType
typealias APIPaths = Endpoints.APIPaths

public enum Endpoints {
        
    public enum PathType: GenericValueProtocol {
        case baseHost

        public typealias Value = String
        
        public var value: String {
            switch self {
            case .baseHost:
                return "https://rickandmortyapi.com/api"
            }
        }
    }
    
    public enum APIPaths: GenericValueProtocol {
        public typealias Value = String
        
        case characters
        
        public var value: String {
            switch self {
            case .characters:
                return "/character/"
            }
        }
    }
}
