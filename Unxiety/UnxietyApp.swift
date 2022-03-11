//
//  UnxietyApp.swift
//  Unxiety
//
//  Created by Vitaly on 22/02/22.
//

import SwiftUI

@main
struct UnxietyApp: App {
    
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                OBWelcomeView()
            }
            
            //onload function
            .onAppear(perform: {
                viewModel.onload()
            })
            
            .statusBar(hidden: true)
            .environmentObject(viewModel)
        }
    }
}
