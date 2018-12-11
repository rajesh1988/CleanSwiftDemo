//
//  LoginViewController.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import UIKit

protocol LoginDisplayLogic: class {
    func displayLogin(viewModel: LoginModel.Login.ViewModel)
    func dispalyForgotPassword()
    func displayRegieter()
}

class LoginViewController: UIViewController, LoginDisplayLogic {
    
    var interactor: LoginBusinessLogic?
    var router: (NSObjectProtocol & LoginRoutingLogic & LoginDataPassing)?

    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configure()
    }
    
    // MARK: Setup
    
    func configure() {
        let viewController = self
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        
        interactor.presenter = presenter
        presenter.viewController = viewController

        router.viewController = viewController
        router.dataStore = interactor
    }
    
    
    // MARK: Routing

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonTapped() {
        let userName =  "admin"
        let password = "password"
        let request = LoginModel.Login.Request(userName: userName, password: password)
        interactor?.login(request: request)
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        
    }
    
    @IBAction func registerButtonTapped() {
        
    }
    
    func displayLogin(viewModel: LoginModel.Login.ViewModel) {
        
    }
    
    func dispalyForgotPassword() {
        
    }
    
    func displayRegieter() {
        
    }
}

