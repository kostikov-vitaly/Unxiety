//
//  Month.swift
//  SelfApp
//
//  Created by Vitaly on 02/03/22.
//

import Foundation

struct Month: Identifiable {
    let id: UUID = UUID()
    let title: String
    var messages: [Message]
    var isExpanded: Bool = false
}
