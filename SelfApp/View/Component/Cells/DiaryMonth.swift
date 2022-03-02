//
//  DiaryMonth.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct DiaryMonth: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var month: Month = Month(title: "", messages: [Message(text: "", date: "")], isExpanded: false)
    var title: String {
        month.title
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("Gray500"), lineWidth: 2)
            
            HStack {
                Text(title)
                    .font(.custom("DM Sans", size: 15))
                    .fontWeight(.medium)
                    .foregroundColor(Color("Gray900"))
                    .frame(width: 200, alignment: .leading)
                
                Spacer()
                
                Image(systemName: "chevron.forward")
                    .font(.system(size: 14, weight: .semibold))
                    .rotationEffect(.degrees(90))
                    .foregroundColor(Color("Gray900"))
                    .frame(width: 14, alignment: .trailing)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 1)
    }
}

//struct DiaryMonth_Previews: PreviewProvider {
//    static var previews: some View {
//        DiaryMonth().environmentObject(ViewModel())
//    }
//}
