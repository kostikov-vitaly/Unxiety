//
//  User.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import Foundation

struct User: Identifiable {
    var id: UUID = UUID()
    var username: String = ""
    var userGoal: String = ""
    var tempMessage: String = ""
    var tempTags: [String] = [""]
}
