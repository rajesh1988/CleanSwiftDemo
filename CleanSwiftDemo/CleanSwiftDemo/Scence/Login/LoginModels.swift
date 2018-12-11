//
//  LoginModels.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import Foundation


enum LoginModel {
    
    // MARK: Use cases

    enum Login {
        
        struct Request {
            var userName: String?
            var password: String?
        }
        
        struct Response {
            var user: User?
            var success: Bool
            var errorMessage: String?
        }
        
        struct ViewModel {
            var success: Bool
            var errorMessage: String?
        }
    }
}

struct User {
    var name: String
    var email: String
    var gender: String
    var dob: String
}
