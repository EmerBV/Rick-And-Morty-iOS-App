//
//  RMRequest.swift
//  Rick And Morty
//
//  Created by Emerson Balahan Varona on 2/1/23.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    /// API Constants
    // Base url
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    // Endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API. If any
    // Path components
    private let pathComponents: [String]
    
    /// Query arguments for API. If any
    // Query parameters
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///     - endpoint: Target endpoint
    ///     - pathComponents: Collection of Path components
    ///     - queryParameters: Collection of query parameters
    
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }

}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
