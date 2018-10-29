//
//  Member.swift
//  LuckyPocket
//
//  Created by Desen Guo on 2018-10-28.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation
import UIKit
struct Member: Equatable{
    var name: String?
    var image: UIImage?
}

func ==(l:Member, r: Member)->Bool
{
    return true
}
