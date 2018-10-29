//
//  Room.swift
//  LuckyPocket
//
//  Created by Desen Guo on 2018-10-27.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation
import UIKit

enum RoomType
{
    case Public
    case Private
}

struct Room: Equatable{
    var name: String?
    var members: [Member]?
    var owner: Member?
    var type: RoomType? = RoomType.Public
    var image: UIImage?
    var LastMessage: String?
    var MessagedAt: Date?
}

func ==(l:Room, r: Room)->Bool
{
    return true
}
