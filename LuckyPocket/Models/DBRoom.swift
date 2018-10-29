//
//  DBRoom.swift
//  LuckyPocket
//
//  Created by Desen Guo on 2018-10-27.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation
import RealmSwift
class DBRoom: Object{
    @objc dynamic var uuid: String? = NSUUID().uuidString
    @objc dynamic var name = ""
}
