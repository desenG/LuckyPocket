//
//  Token.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-24.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation

class Token: NSObject, NSCoding {
    
    var access_token: String?
    
    init(access_token: String?) {
        self.access_token = access_token
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(access_token, forKey: "access_token")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let accessToken = aDecoder.decodeObject(forKey: "access_token") as! String
        
        self.init(access_token: accessToken)
    }
}
