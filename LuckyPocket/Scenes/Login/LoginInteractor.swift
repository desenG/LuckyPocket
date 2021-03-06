//
//  LoginInteractor.swift
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

protocol LoginBusinessLogic {
    func login()
}

class LoginInteractor: LoginBusinessLogic {
    
    // MARK: Properties
    
    var viewController: LoginFormErrorLogic?
    var router: (NSObjectProtocol & LoginRoutingLogic)?
    var worker: UsersWorker = UsersWorker(usersStore: UsersAPI())
    
    // MARK: Login
    
    func login() {
        self.router?.routeToHome()
    }
}

