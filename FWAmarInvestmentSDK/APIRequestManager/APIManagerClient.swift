//
//  APIManagerClient.swift
//  FWAmarInvestmentSDK
//
//  Created by Amrendra on 08/01/23.
//

import Foundation
import UIKit

public class APIManagerClient {
    
    public init() {} //amar init method should also public accessor
    
    public func fetchUserLoginDemo() {
        let loginReq = InvestmentRequest(amount: 120.0, year: 2)
        print("Investment Request instance = \(loginReq)")
    }
    
    //, completionHandler: ()-> ([String: String])
    public func presentViewControllerFromSDK(duration: Int, amount: Double, handler: (([String: String])-> Void)?) -> UIViewController? {

        let frameworkBundle = Bundle(for: APIManagerClient.self)
        let storyBoard = UIStoryboard(name: "InvestmentStory", bundle: frameworkBundle)
        if let vc = storyBoard.instantiateViewController(withIdentifier: "InvestmentInitViewController") as? InvestmentInitViewController {
            vc.callBackHandler = handler
            return vc
        }else {
            print("Error: whiel fetching VC from SDK storyboard")
            return nil
        }
    }
   
}
