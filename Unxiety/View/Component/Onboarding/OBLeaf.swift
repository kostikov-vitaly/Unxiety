//
//  OBLeaf.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBLeaf: View {
    
    
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "leaf.fill")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(Color("White"))
            Spacer()
        }
    }
}

//struct OBLeaf_Previews: PreviewProvider {
//    static var previews: some View {
//        OBLeaf()
//    }
//}
