//
//  Authenticator.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-24.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation

class Authenticator {
    var tokenDataStore: TokenDataStoreProtocol
    
    init() {
        self.tokenDataStore = TokenDataStore()
    }
    
    init(tokenDataStore: TokenDataStoreProtocol) {
        self.tokenDataStore = tokenDataStore
    }
    
    func isLoggedIn() -> Bool {
        return getAccessToken().count > 0
    }
    
    private func getAccessToken() -> String {
        guard let token = self.tokenDataStore.getToken().access_token, token.count > 0 else {
            return ""
        }
        
        return token
    }
}

// MARK: TokenDataStore

protocol TokenDataStoreProtocol {
    func getToken() -> Token
    func setToken(_ token: Token)
    func updateToken(completionHandler: @escaping (Bool) -> Void)
}

// MARK: Token Error

enum TokenStoreError: Error {
    case CannotUpdateToken
}
