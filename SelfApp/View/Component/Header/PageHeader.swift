//
//  PageHeader.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct PageHeader: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    @Environment(\.dismiss) var dismiss
    
    var title: String
    var isGoal: Bool = false
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 0) {
            
            Button(action: {
                dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("Back")
                        .font(.custom("DM Sans", size: 18))
                        .fontWeight(.medium)
                    
                    Spacer()
                }
                .foregroundColor(isGoal ? Color("White") : Color("Gray900"))
                .frame(minWidth: 80)
                .frame(height: 40)
            }
            
            Spacer()
            
            Text(title)
                .font(.custom("DM Sans", size: 18))
                .fontWeight(.medium)
                .foregroundColor(isGoal ? Color("White") : Color("Gray900"))
                .frame(height: 40)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 0) {
                Spacer()
                if !isGoal {
                    Image("DefaultAvatar")
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                } else {
                    HeaderEmptySpace()
                }
            }
            .frame(minWidth: 80)
            .frame(height: 40)
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 32)
        .frame(height: 80)
    }
}

struct PageHeader_Previews: PreviewProvider {
    static var previews: some View {
        PageHeader(title: "123", isGoal: true).environmentObject(ViewModel())
            .preferredColorScheme(.dark)
    }
}
