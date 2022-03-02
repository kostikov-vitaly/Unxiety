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
            ForEach(["October 2021", "November 2021", "December 2021", "January 2022", "February 2022", "March 2022"], id: \.self) { month in
                DataMonth(text: month, cACount: Int.random(in: 1...50))
            }
            .padding(.horizontal, 20)
        }
    }
}

//struct DataView_Previews: PreviewProvider {
//    static var previews: some View {
//        DataView().environmentObject(ViewModel())
//    }
//}
