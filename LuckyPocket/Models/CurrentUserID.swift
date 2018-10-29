//
//  CurrentUserID.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-24.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation

class CurrentUserID: NSObject, NSCoding {
    
    var uuid: String?
    
    init(uuid: String?) {
        self.uuid = uuid
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(uuid, forKey: "uuid")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let uuid = aDecoder.decodeObject(forKey: "uuid") as! String
        
        self.init(uuid: uuid)
    }
}
