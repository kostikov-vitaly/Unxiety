//
//  OBDescr.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBDescr: View {
    
    var descr: String
    
    var body: some View {
        Text(descr)
            .font(.custom("DM Sans", size: 18))
            .fontWeight(.regular)
            .foregroundColor(Color("White"))
    }
}

//struct OBDescr_Previews: PreviewProvider {
//    static var previews: some View {
//        OBDescr()
//    }
//}
