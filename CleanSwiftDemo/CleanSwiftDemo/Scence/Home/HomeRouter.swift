//
//  HomeRouter.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 09/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import UIKit


@objc
protocol HomeRoutingLogic {
    func routeToLogin(segue: UIStoryboardSegue?)
}

protocol HomeDataPassing {
    var dataStore: HomeDataStore? { get }
}

class HomeRouter: NSObject, HomeRoutingLogic, HomeDataPassing {
    weak var viewController: HomeViewController?
    var dataStore: HomeDataStore?
    
    // MARK: Routing
    
    func routeToLogin(segue: UIStoryboardSegue?) {
        
    }
    
    // MARK: Navigation
    
    func navigateToLogin(source: LoginViewController, destination: HomeViewController) {
        
    }
    
    // MARK: Passing data
    
    func passDataToLogin(source: LoginDataStore, destination: inout HomeDataStore) {
        
    }
}
