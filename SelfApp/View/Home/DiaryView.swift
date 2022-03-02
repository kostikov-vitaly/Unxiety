//
//  DiaryView.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct DiaryView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        
        VStack {
            
            ScrollView {
                ForEach(viewModel.months) { month in
                    DiaryMonth(month: month)
                        .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
                }
                .padding(.horizontal, 20)
            }
            
            Spacer()
            
            if !viewModel.isDiaryFlipped {
                ChatFrontView()
                    .transition(.opacity)
            } else {
                ChatBackView()
                    .transition(.opacity)
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView().environmentObject(ViewModel())
    }
}
