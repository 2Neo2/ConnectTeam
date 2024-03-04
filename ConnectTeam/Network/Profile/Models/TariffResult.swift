//
//  TariffResult.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 25.02.2024.
//

import Foundation

struct TariffResult: Decodable {
    let expiryDate: String
    let holderId: Int
    let planAccess: String
    let planType: String
    let userId: Int
    let confirmed: Bool
    
    enum CodingKeys: String, CodingKey {
        case expiryDate = "expiry_date"
        case holderId = "holder_id"
        case planAccess = "plan_access"
        case planType = "plan_type"
        case userId = "user_id"
        case confirmed
    }
}
