//
//  ForgotPresenter.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import Foundation


protocol ForgotPasswordPresentationLogic {
    func presentForgotPassword(response: LoginModel.Login.Response)
}

class ForgotPasswordPresenter: ForgotPasswordPresentationLogic {
    weak var viewController: ForgotPasswordDisplayLogic?
    
    func presentForgotPassword(response: LoginModel.Login.Response) {
        let viewModel = LoginModel.Login.ViewModel(success: response.success, errorMessage: response.errorMessage)
        viewController?.displayForgotPassword(viewModel: viewModel)
    }
}
