//
//  UserLoginRequest.swift
//  FWAmarInvestmentSDK
//
//  Created by Amrendra on 08/01/23.
//

import Foundation
struct InvestmentRequest: Codable {
    
    let amount: Double
    let duration: Int

    init(amount: Double, year tenure: Int) {
        self.amount = amount
        self.duration = tenure
    }
}
