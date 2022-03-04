//
//  Message.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct MessageView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    let message: Message
    
    var body: some View {
        
        HStack(alignment: .top) {
            
            Text(message.text)
                .font(.custom("DM Sans", size: 14))
                .fontWeight(.regular)
                .foregroundColor(Color("Gray900"))
            
            Spacer(minLength: 20)
            
            Text(message.date)
                .font(.custom("DM Sans", size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color("Gray700"))
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 20)
        .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("Gray500"), lineWidth: 2))
        .padding(.leading, 8)
    }
}

//struct MessageView_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageView()
//            .environmentObject(ViewModel())
//    }
//}
