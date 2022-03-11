//
//  OBHowToUseView.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBHowToUseView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            GradientView()
            
            VStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    OBHeader()
                    ScrollView {
                        VStack(alignment: .leading, spacing: 20) {
                            
                            OBTitle(title: OBContent.content[2].title)
                            
                            OBDescr(descr: OBContent.content[2].descr ?? "")
                            OBLeaf()
                            OBDescr(descr: OBContent.content[2].descr2 ?? "")
                            OBLeaf()
                            OBDescr(descr: OBContent.content[2].descr3 ?? "")
                        }
                    }
                    .padding(.bottom, 20)
                    
                    Spacer()
                    
                    NavigationLink(destination: OBIntroduceView()) {
                        ButtonView(buttonType: .outline, text: OBContent.content[2].button)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//struct OBHowToUseView_Previews: PreviewProvider {
//    static var previews: some View {
//        OBHowToUseView().environmentObject(ViewModel())
//    }
//}
