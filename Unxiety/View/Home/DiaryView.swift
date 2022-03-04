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
                ScrollViewReader { value in
                    
                    ForEach(viewModel.months) { month in
                        DiaryMonth(month: month)
                            .padding(.vertical, 1)
                    }
                    .onChange(of: viewModel.months.count, perform: { _ in
                        value.scrollTo(viewModel.months.count - 1)
                    })
                    .padding(.horizontal, 20)
                    .padding(.vertical, 2)
                    .padding(.bottom, 8)
                    
                }
            }
            
            Spacer()
            
            if !viewModel.isDiaryFlipped {
                ChatFrontView()
            } else {
                ChatBackView()
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

//struct DiaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        DiaryView().environmentObject(ViewModel())
//    }
//}
