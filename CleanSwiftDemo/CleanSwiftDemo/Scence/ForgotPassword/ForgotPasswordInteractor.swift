//
//  ForgotPasswordInteractor.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import Foundation


protocol ForgotPasswordBusinessLogic {
    func login(request: LoginModel.Login.Request)
}

protocol ForgotPasswordDataStore {
    
}

class ForgotPasswordInteractor: ForgotPasswordBusinessLogic, ForgotPasswordDataStore {
    var presenter: ForgotPasswordPresentationLogic?
    var worker: ForgotPasswordWorker?
    
    func login(request: LoginModel.Login.Request) {
        
        //        let userName = request.userName
        //        let password = request.password
        //
        //        if worker!.login(user: userName, password: password) {
        //            let response = LoginModel.Login.Response(user: nil, isError: true, errorMessage: nil)
        //            presenter?.presentLogin(response: response)
        //        } else {
        //            let response = LoginModel.Login.Response(success: false)
        //            presenter?.presentLogin(response: response)
        //        }
    }
}
