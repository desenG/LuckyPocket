//
//  LoginModels.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-24.
//  Copyright (c) 2018 desen guo. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Login {
    
    struct Account {
        
        struct Request {
            var email: String
            var password: String
        }
        
        struct Response {
            var userToken: UserToken
            
            init(data: [String:Any]) {
                self.userToken = UserToken(
                    token_type: data["token_type"] as? String,
                    access_token: data["access_token"] as? String,
                    expires_in: data["expires_in"] as? Int
                )
            }
        }
    }
    
    struct LoginKit {
        
        struct Request {
            var username: String
            var password: String
            var token: UserToken
        }
        
        struct Response {
            var token: Token
            
            init(data: [String:Any]) {
                self.token = Token(
                    access_token: data["access_token"] as? String
                )
            }
        }
    }
}
