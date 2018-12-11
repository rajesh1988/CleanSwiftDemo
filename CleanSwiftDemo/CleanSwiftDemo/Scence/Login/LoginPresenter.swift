//
//  LoginPresenter.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import Foundation

protocol LoginPresentationLogic {
    func presentLogin(response: LoginModel.Login.Response)
}

class LoginPresenter: LoginPresentationLogic {
    
    weak var viewController: LoginDisplayLogic?
    
    func presentLogin(response: LoginModel.Login.Response) {
        
        
        
//        let viewModel = LoginModel.Login.ViewModel(success: response.success, errorMessage: response.errorMessage)
//        viewController?.displayLogin(viewModel: viewModel)
    }
}
