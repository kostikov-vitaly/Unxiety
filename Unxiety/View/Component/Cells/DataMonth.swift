//
//  DiaryMonth.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct DataMonth: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var text: String = ""
    var cACount: Int = 1
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("GradientEnd500"), lineWidth: 2)
            
            HStack {
                Text(text)
                    .font(.custom("DM Sans", size: 15))
                    .fontWeight(.medium)
                    .foregroundColor(Color("Gray900"))
                    .frame(width: 200, alignment: .leading)
                
                Spacer()
                
                Text("\(cACount)")
                    .font(.custom("DM Sans", size: 15))
                    .fontWeight(.medium)
                    .foregroundColor(Color("Gray900"))
                    .frame(width: 40, alignment: .trailing)
                
                Image(systemName: "chevron.forward")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color("Gray900"))
                    .frame(width: 14, alignment: .trailing)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 1)
    }
}

//struct DataMonth_Previews: PreviewProvider {
//    static var previews: some View {
//        DataMonth().environmentObject(ViewModel())
//    }
//}
