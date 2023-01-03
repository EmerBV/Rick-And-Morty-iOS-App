//
//  RMService.swift
//  Rick And Morty
//
//  Created by Emerson Balahan Varona on 2/1/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///     - request: Request instance
    ///     - type: The type of object we expect to get back
    ///     - completion: Callback with data or error

    // Para comprobar en consola el API con esto funcionaría
    //public func execute(_ request: RMRequest, completion: @escaping (Result<String, Error>) -> Void) {}
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {}
}
