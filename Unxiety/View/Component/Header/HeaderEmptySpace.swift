//
//  HeaderEmptySpace.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct HeaderEmptySpace: View {
    
    
    
    var body: some View {
        Color.clear
            .frame(minWidth: 80)
            .frame(height: 40)
    }
}

struct HeaderEmptySpace_Previews: PreviewProvider {
    static var previews: some View {
        HeaderEmptySpace()
    }
}
