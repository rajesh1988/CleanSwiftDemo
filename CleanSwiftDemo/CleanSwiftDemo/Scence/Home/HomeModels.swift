//
//  HomeModels.swift
//  CleanSwiftDemo
//
//  Created by Rajesh Vishwakarma on 08/12/18.
//  Copyright © 2018 Rajesh Vishwakarma. All rights reserved.
//

import Foundation

enum Home
{
    // MARK: Use cases
    
    enum ShowGreeting
    {
        struct Request
        {
        }
        
        struct Response
        {
            var userID: String?
        }
        
        struct ViewModel
        {
            var userID: String?
        }
    }
}
