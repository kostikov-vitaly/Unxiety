//
//  OBTitle.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBTitle: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.custom("DM Sans", size: 34))
            .fontWeight(.bold)
            .foregroundColor(Color("White"))
    }
}

//struct OBTitle_Previews: PreviewProvider {
//    static var previews: some View {
//        OBTitle(title: <#T##Binding<String>#>)
//    }
//}
