//
//  BackgroundView.swift
//  SelfApp
//
//  Created by Vitaly on 24/02/22.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        Color.clear
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("GradientStart"), Color("GradientEnd")]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
    }
}

//struct GradientView_Previews: PreviewProvider {
//    static var previews: some View {
//        GradientView()
//    }
//}
