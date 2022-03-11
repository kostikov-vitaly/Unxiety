//
//  StartView.swift
//  SelfApp
//
//  Created by Vitaly on 24/02/22.
//

import SwiftUI

struct OBStartView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            GradientView()
            
            VStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    OBHeader()
                    VStack(alignment: .leading, spacing: 20) {
                        
                        OBTitle(title: OBContent.content[1].title)
                        
                        OBDescr(descr: OBContent.content[1].descr ?? "")
                        OBLeaf()
                        OBDescr(descr: OBContent.content[1].descr2 ?? "")
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: OBHowToUseView()) {
                        ButtonView(buttonType: .outline, text: OBContent.content[1].button)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//struct OBStartView_Previews: PreviewProvider {
//    static var previews: some View {
//        OBStartView().environmentObject(ViewModel())
//    }
//}
