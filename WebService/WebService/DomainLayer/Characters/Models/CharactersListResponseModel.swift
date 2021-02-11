//
//  CharactersListResponseModel.swift
//  WebService
//
//  Created by Oguz Tandogan on 31.01.2021.
//

import Foundation

public class CharactersListResponseModel: BaseResponseProtocol {
    
    public var error: BaseErrorResponse?
    public let id: Int?
    public let name: String?
    public let status: String?
    public let species: String?
    public let type: String?
    public let gender: String?
    public let origin: Location?
    public let location: Location?
    public let image: String?
    public let episode: [String]?
    public let url: String?
    public let created: String?
    
    public init(id: Int?,
                name: String?,
                status: String?,
                species: String?,
                type: String?,
                gender: String?,
                origin: Location?,
                location: Location?,
                image: String?,
                episode: [String]?,
                url: String?,
                created: String?) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.gender = gender
        self.origin = origin
        self.location = location
        self.type = type
        self.image = image
        self.episode = episode
        self.url = url
        self.created = created
    }
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case status = "status"
        case species = "species"
        case gender = "gender"
        case origin = "origin"
        case location = "location"
        case type = "type"
        case image = "image"
        case episode = "episode"
        case url = "url"
        case created = "created"
    }
}

// MARK: - Location
public class Location: Codable {
    public let name: String?
    public let url: String?
    
    public init(name: String?,
                url: String?) {
        self.name = name
        self.url = url
    }
    
    public enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}

// MARK: - Info
public class Info: Codable {
    public let count: Int?
    public let pages: Int?
    public let next: String?
    public let previous: String?
    
    public init(count: Int?,
                pages: Int?,
                next: String?,
                previous: String?) {
        self.count = count
        self.pages = pages
        self.next = next
        self.previous = previous
    }
    
    public enum CodingKeys: String, CodingKey {
        case count = "count"
        case pages = "pages"
        case next = "next"
        case previous = "prev"
    }
}
