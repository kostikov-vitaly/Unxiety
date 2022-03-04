//
//  HomeHeader.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct HomeHeader: View {
    
    var title: String = ""
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            
            HeaderEmptySpace()
            
            Spacer()
            
            Text(title)
                .font(.custom("DM Sans", size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("Gray900"))
                .frame(height: 40)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 0) {
                Spacer()
                NavigationLink(destination: ProfileView()) {
                    Image("DefaultAvatar")
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color("Gray900"))
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

struct HomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeader()
    }
}
