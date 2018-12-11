//
//  LoginWorker.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import Foundation

typealias responseSuccess = (_ response: User) ->()
typealias responseFailure = (_ response: Error) ->()

class LoginWorker {
    
    func login(user userName: String?, password: String?) -> Bool {
        
        if userName == "admin" && password == "password" {
            return true
        }
        
        return false
    }
}
