//
//  DataView.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct DataView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.months, id: \.id) { month in
                DataMonth(text: month.title, cACount: Int.random(in: 1...20))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 2)
            .padding(.bottom, 8)
        }
    }
}

//struct DataView_Previews: PreviewProvider {
//    static var previews: some View {
//        DataView().environmentObject(ViewModel())
//    }
//}
