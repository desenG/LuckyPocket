//
//  UsersAPI.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-24.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation
class UsersAPI: UsersStoreProtocol {
    
    // MARK: - Authenticate
    func login(request: Login.Account.Request, completionHandler: @escaping (UserToken?, UsersStoreError?) -> Void) {

    }
    
    func signup(request: Signup.Request, completionHandler: @escaping (User?, UsersStoreError?) -> Void) {

    }
}
