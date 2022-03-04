//
//  Message.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: UUID = UUID()
    
    let text: String
    let date: String
}
