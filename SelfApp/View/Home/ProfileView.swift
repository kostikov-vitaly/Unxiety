//
//  ProfileView.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct ProfileView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            PageHeader(title: HeaderContent.content[3].title, isGoal: false)
            HStack {
                Text(HeaderContent.content[4].title + ", \(viewModel.currentUser.username)")
                    .font(.custom("DM Sans", size: 34))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Gray900"))
                    .padding(.horizontal, 20)
                Spacer()
            }
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView().environmentObject(ViewModel())
//    }
//}
