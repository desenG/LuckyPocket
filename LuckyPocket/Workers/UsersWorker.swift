//
//  UsersWorker.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-24.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation

class UsersWorker {
    
    var usersStore: UsersStoreProtocol
    
    init(usersStore: UsersStoreProtocol) {
        self.usersStore = usersStore
    }
    

    // MARK: - Authenticate
    
    func login(request: Login.Account.Request, completionHandler: @escaping(UserToken?, UsersStoreError?) -> Void) {
        usersStore.login(request: request) { (token, error) in
            DispatchQueue.main.async {
                completionHandler(token, error)
            }
        }
    }
    
    func signup(request: Signup.Request, completionHandler: @escaping(User?, UsersStoreError?) -> Void) {
        usersStore.signup(request: request) { (user, error) in
            DispatchQueue.main.async {
                completionHandler(user, error)
            }
        }
    }
}

// MARK: Users API

protocol UsersStoreProtocol {
    func login(request: Login.Account.Request, completionHandler: @escaping(UserToken?, UsersStoreError?) -> Void)
    func signup(request: Signup.Request, completionHandler: @escaping(User?, UsersStoreError?) -> Void)
}

// MARK: Users Error

enum UsersStoreError: Error {
    case CannotLogin(String)
    case CannotSignup(String)
    case CannotFetchChatkitToken
}
