//
//  LoginRouter.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 09/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import UIKit

@objc
protocol LoginRoutingLogic {
    func routeToHome(segue: UIStoryboardSegue?)
    func routeToForgotPassword(segue: UIStoryboardSegue?)
    func routeToRegister(segue: UIStoryboardSegue?)
}

protocol LoginDataPassing {
    var dataStore: LoginDataStore? { get }
}

class LoginRouter: NSObject, LoginRoutingLogic, LoginDataPassing {
    weak var viewController: LoginViewController?
    var dataStore: LoginDataStore?
    
    // MARK: Routing
    
    func routeToHome(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! HomeViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToHome(source: dataStore!, destination: &destinationDS)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToHome(source: dataStore!, destination: &destinationDS)
            navigateToHome(source: viewController!, destination: destinationVC)
        }
    }
    
    func routeToForgotPassword(segue: UIStoryboardSegue?) {
        
    }
    
    func routeToRegister(segue: UIStoryboardSegue?) {
        
    }
    
    // MARK: Navigation
    
    func navigateToHome(source: LoginViewController, destination: HomeViewController) {
        
    }
    
    func navigateToForgotPassword(source: LoginViewController, destination: HomeViewController) {
        
    }
    
    func navigateToRegister(source: LoginViewController, destination: HomeViewController) {
        
    }
    
    // MARK: Passing data
    
    func passDataToHome(source: LoginDataStore, destination: inout HomeDataStore) {
        
    }
}
