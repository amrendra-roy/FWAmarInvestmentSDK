//
//  UserLoginResponse.swift
//  FWAmarInvestmentSDK
//
//  Created by Amrendra on 08/01/23.
//

import Foundation
struct InvestmentResponse: Decodable {
    enum CodingKeys: String, CodingKey {
        case success, error, data
        case currentTime = "current_time"
    }

    public let success: Bool
    public let currentTime: String? //": "2021-11-20T13:00:54.654Z",
    public let error: Int
    public let data: [String: String]?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        data = try? container.decode(Dictionary.self, forKey: .data)
        success = try container.decode(Bool.self, forKey: .success)
        currentTime = try? container.decode(String.self, forKey: .currentTime)
        error = try container.decode(Int.self, forKey: .error)
    }
}


