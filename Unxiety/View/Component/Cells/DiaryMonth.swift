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
    
    @State var month: Month = Month(title: "", messages: [Message(text: "", date: "")], isExpanded: false)
    var title: String {
        month.title
    }
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 8) {
            
            HStack(alignment: .center) {
                Text(title)
                    .font(.custom("DM Sans", size: 15))
                    .fontWeight(.medium)
                    .foregroundColor(Color("Gray900"))
                Spacer()
                Image(systemName: "chevron.forward")
                    .font(.system(size: 14, weight: .semibold))
                    .rotationEffect(.degrees(90))
                    .foregroundColor(Color("Gray900"))
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 16)
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("GradientEnd500"), lineWidth: 2))
            
            .onTapGesture {
                month.isExpanded.toggle()
                
                withAnimation(.easeInOut(duration: 0.5)) {
                    if month.isExpanded == true {
                        viewModel.scrollToMonthBottom(month: month)
                    }
                    
//                    viewModel.collapseAllMonths()
                }
            }
            
            if month.isExpanded {
                Group {
                    ForEach(month.messages, id: \.id) { message in
                        MessageView(message: message)
                    }
                }
            }
        }
    }
}

//struct DiaryMonth_Previews: PreviewProvider {
//    static var previews: some View {
//        DiaryMonth().environmentObject(ViewModel())
//    }
//}
