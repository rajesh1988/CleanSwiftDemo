//
//  ForgotPasswordRouter.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 09/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import UIKit


@objc
protocol ForgotPasswordRoutingLogic {
    func routeToLogin(segue: UIStoryboardSegue?)
}

protocol ForgotPasswordDataPassing {
    var dataStore: ForgotPasswordDataStore? { get }
}

class ForgotPasswordRouter: NSObject, ForgotPasswordRoutingLogic, ForgotPasswordDataPassing {
    var dataStore: ForgotPasswordDataStore?
    
    // MARK: Routing
    
    func routeToLogin(segue: UIStoryboardSegue?) {
        
    }
    
    // MARK: Navigation
    
    func navigateToLogin(source: ForgotPasswordViewController, destination: LoginViewController) {
        
    }
    
    // MARK: Passing data
    
    func passDataToLogin(source: ForgotPasswordDataStore, destination: inout LoginDataStore) {
        
    }
}
