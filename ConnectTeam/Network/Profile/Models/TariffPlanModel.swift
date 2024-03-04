//
//  TariffPlanModel.swift
//  ConnectTeam
//
//  Created by Иван Доронин on 03.03.2024.
//

import Foundation

struct TariffPlanModel: Decodable {
    let confirmed: Bool
    let duration: Int
    let expiryDate: String
    let holderId: Int
    let planAccess: String
    let planType: String
    let userId: Int
    
    
    enum CodingKeys: String, CodingKey {
        case confirmed
        case duration
        case expiryDate = "expiry_date"
        case holderId = "holder_id"
        case planAccess = "plan_access"
        case planType = "plan_type"
        case userId = "user_id"
    }
}
