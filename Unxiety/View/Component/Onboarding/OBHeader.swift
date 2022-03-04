//
//  OBHeader.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBHeader: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                HStack {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("Back")
                        .font(.custom("DM Sans", size: 18))
                        .fontWeight(.medium)
                }
                .foregroundColor(Color("White"))
                Spacer(minLength: 20)
            }
            .frame(height: 80)
        }
    }
}
