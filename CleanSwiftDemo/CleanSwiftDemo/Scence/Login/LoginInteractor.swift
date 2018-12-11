//
//  LoginInteractor.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import Foundation

protocol LoginBusinessLogic {
    func login(request: LoginModel.Login.Request)
}

protocol LoginDataStore {
    
}

class LoginInteractor: LoginBusinessLogic, LoginDataStore {
    var presenter: LoginPresentationLogic?
    var worker: LoginWorker?
    
    // MARK: Login
    
    func login(request: LoginModel.Login.Request) {
        
        let userName = request.userName
        let password = request.password

        if worker!.login(user: userName, password: password) {
            let response = LoginModel.Login.Response(user: nil, success: true, errorMessage: nil)
            presenter?.presentLogin(response: response)
        } else {
            let response = LoginModel.Login.Response(user: nil, success: false, errorMessage: "Invalid UserName or Password")
            presenter?.presentLogin(response: response)
        }
    }
}
