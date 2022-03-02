//
//  OBIntroduceView.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBIntroduceView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            GradientView()
            
            VStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    OBHeader()
                    VStack(alignment: .leading, spacing: 20) {
                        OBTitle(title: OBContent.content[3].title)
                        OBDescr(descr: OBContent.content[3].descr ?? "")
                    }
                    
                    Spacer()
                    
                    OBIntroCard()
                    
                    NavigationLink(destination: OBGoalView()) {
                        ButtonView(buttonType: .outline, text: OBContent.content[3].button)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//struct OBIntroduceView_Previews: PreviewProvider {
//    static var previews: some View {
//        OBIntroduceView()
//    }
//}
