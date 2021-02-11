//
//  ApiServiceProvider.swift
//  WebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import Alamofire

public enum UrlPathError: Error {
    
    case missingUrl
}

public class ApiServiceProvider<T: CodableDataProtocol>: URLRequestConvertible {
    
    private var method: HTTPMethod
    private var path: String?
    private var pathType: Endpoints.PathType
    //private var isBody: Bool
    private var isAuthRequested: Bool
    private var data: T?
    
    /// Description: General Api call service provider. It's create a urlRequestConvertible object to pass as an argument to alamofire url session request
    /// - Parameters:
    ///   - method: http methods, default value is get
    ///   - path: url path, default value is nil
    ///   - isAuthRequested: it's used to pass accessToken to header or not. Default value is true
    ///   - data: Codable data. If request is post, patch or put it's used as body otherwise as query string
    init(method: HTTPMethod = .get, path: String? = nil, pathType: Endpoints.PathType, isAuthRequested: Bool = true, data: T? = nil) {
        self.method = method
        self.path = path
        self.pathType = pathType
        self.isAuthRequested = isAuthRequested
        //self.isBody = isBody
        self.data = data
    }
    
    public func asURLRequest() throws -> URLRequest {
        var url = try pathType.value.asURL()
        
        if let path = path {
            url = url.appendingPathComponent(path)
        }
         
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.headers = headers
        request.cachePolicy = .reloadIgnoringCacheData
        
        return try encoding.encode(request, with: params)
        
    }
    
    // MARK: - Encoding -
    private var encoding: ParameterEncoding {
        switch method {
        case .post, .patch, .put:
            return JSONEncoding.default
        case .get:
            return URLEncoding.queryString
        default:
            return JSONEncoding.default
        }
    }
    
    private var params: Parameters? {
        return data.asDictionary()
    }

    private var headers: HTTPHeaders {
        var httpHeaders = HTTPHeaders()
        httpHeaders.add(HTTPHeader(name: HttpHeaderFields.contentType.value.0, value: HttpHeaderFields.contentType.value.1))

        return httpHeaders
    }
    
}
