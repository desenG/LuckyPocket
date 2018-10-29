//
//  TokenDataStore.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-24.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation
class TokenDataStore: TokenDataStoreProtocol {
    
    static var DATA_KEY = "WORDS_CHATKIT_TOKEN"
    
    // MARK: Fetch and Save
    
    func getToken() -> Token {
        if let token = UserDefaults.standard.object(forKey: type(of: self).DATA_KEY) as! Data? {
            return NSKeyedUnarchiver.unarchiveObject(with: token) as! Token
        }
        
        return Token(access_token: nil)
    }
    
    func setToken(_ token: Token) {
        let encodedData = NSKeyedArchiver.archivedData(withRootObject: token)
        UserDefaults.standard.set(encodedData, forKey: type(of: self).DATA_KEY)
    }
    
    func updateToken(completionHandler: @escaping (Bool) -> Void) {
        var token : Token?
        //todo get token here
        
        let isSuccess = (token != nil)
        if(isSuccess)
        {
            setToken(token!)
        }

        completionHandler(isSuccess)
    }
}

