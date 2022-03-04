//
//  WelcomeView.swift
//  SelfApp
//
//  Created by Vitaly on 24/02/22.
//

import SwiftUI

struct OBWelcomeView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            GradientView()
            
            VStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    OBTopSpace()
                    VStack(alignment: .leading, spacing: 20) {
                        OBTitle(title: OBContent.content[0].title)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: OBStartView()) {
                        ButtonView(buttonType: .outline, text: OBContent.content[0].button)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//struct OBWelcomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        OBWelcomeView().environmentObject(ViewModel())
//    }
//}
