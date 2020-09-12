//
//  Disaster.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 10/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import Foundation

struct DisasterData: Decodable {
    var data: [DisasterDetail]
    
}

struct DisasterDetail: Decodable {
    var fields: DisasterInfo
}

struct DisasterInfo: Decodable {
    var name: String
    var url: String
    var status: String
}

enum DisasterError: Error {
    case dataUnavailable
    case cannotProccessData
}
