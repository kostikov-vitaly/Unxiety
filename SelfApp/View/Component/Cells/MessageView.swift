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
    
    @State var message: Message = Message(text: "Had flight to Dubai", date: "18/02")
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("Gray600"), lineWidth: 1)
            
            HStack(alignment: .center, spacing: 0) {
                
                Text(message.text)
                    .font(.custom("DM Sans", size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(Color("Gray900"))
                    .padding(.top, 1)
                
                Spacer()
                
                Text(message.date)
                    .font(.custom("DM Sans", size: 14))
                    .fontWeight(.medium)
                    .foregroundColor(Color("Gray700"))
            }
            .padding(.vertical, 14)
            .padding(.horizontal, 16)
        }
    }
}

//struct MessageView_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageView()
//            .environmentObject(ViewModel())
//    }
//}
