//
//  RegisterRouter.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 09/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import UIKit


@objc
protocol RegisterRoutingLogic {
    func routeToLogin(segue: UIStoryboardSegue?)
}

protocol RegisterDataPassing {
    var dataStore: RegisterDataStore? { get }
}

class RegisterRouter: NSObject, RegisterRoutingLogic, RegisterDataPassing {
    var dataStore: RegisterDataStore?
    
    // MARK: Routing
    
    func routeToLogin(segue: UIStoryboardSegue?) {
    
    }
    
    // MARK: Navigation
    
    func navigateToLogin(source: LoginViewController, destination: RegisterViewController) {
        
    }
    
    // MARK: Passing data
    
    func passDataToLogin(source: RegisterDataStore, destination: inout LoginDataStore) {
        
    }
}
