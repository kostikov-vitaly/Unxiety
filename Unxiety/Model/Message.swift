//
//  Message.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import Foundation

struct Message: Identifiable, Codable, Hashable {
    var id: UUID = UUID()
    
    let text: String
    let date: String
}
