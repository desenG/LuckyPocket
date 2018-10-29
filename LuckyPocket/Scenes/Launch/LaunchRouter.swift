//
//  LaunchRouter.swift
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

@objc protocol LaunchRoutingLogic {
    func routeToWelcome()
    func routeToHome()
}

class LaunchRouter: NSObject, LaunchRoutingLogic {
    
    weak var viewController: LaunchViewController?
    
    func routeToWelcome() {
        viewController!.performSegue(withIdentifier: "Welcome", sender: nil)
    }
    
    func routeToHome() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "MainNavigator") as! UINavigationController
        viewController!.show(destinationVC, sender: nil)
    }
}