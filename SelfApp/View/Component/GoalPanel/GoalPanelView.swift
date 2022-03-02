//
//  GoalPanelView.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct GoalPanelView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color("GradientStart"), Color("GradientEnd")]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
            
            HStack {
                Text(viewModel.currentUser.userGoal)
                    .font(.custom("DM Sans", size: 15).weight(.medium))
                    .fontWeight(.medium)
                
                Spacer()
                
                Image(systemName: "arrow.up.forward")
                    .font(.system(size: 14, weight: .semibold))
            }
            .foregroundColor(Color("White"))
            .padding(.vertical, 16)
            .padding(.horizontal, 16)
        }
    }
}

//struct GoalPanelView_Previews: PreviewProvider {
//    static var previews: some View {
//        GoalPanelView().environmentObject(ViewModel())
//    }
//}
