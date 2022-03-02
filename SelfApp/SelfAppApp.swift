//
//  SelfAppApp.swift
//  SelfApp
//
//  Created by Vitaly on 22/02/22.
//

import SwiftUI

@main
struct SelfAppApp: App {
    
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                OBWelcomeView()
            }
            .statusBar(hidden: true)
            .environmentObject(viewModel)
        }
    }
}
