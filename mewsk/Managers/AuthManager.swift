//
//  AuthManager.swift
//  mewsk
//
//  Created by Antonio Toriz on 8/13/21.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "4d8042112fcf4d9b93d76a6e70568eba"
        static let clientSecret = "cdf5f149325a46f9bda247e44ffcc143"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let baseURL = "https://accounts.spotify.com/authorize"
        let scopes = "user-read-private"
        let redirectURI = "https://www.antoniotoriz.com"
        let URLString = "\(baseURL)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: URLString)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: ((Bool) -> Void)) {
        // get token
    }
    
    public func refreshAccessToken() {
        
    }
    
    public func cacheToken() {
        
    }
    
    
        
}
