//
//  ButtonView.swift
//  SelfApp
//
//  Created by Vitaly on 24/02/22.
//

import SwiftUI

struct ButtonView: View {
    
    enum ButtonType {
        case outline
        case standart
    }
    
    @State var buttonType = ButtonType.standart
    
    var text: String = ""
    
    var body: some View {
        switch buttonType {
        case .outline:
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                
                HStack(alignment: .center, spacing: 20) {
                    
                    Text(text)
                        .font(.custom("DM Sans", size: 18))
                        .fontWeight(.medium)
                    
                    Image(systemName: "chevron.right")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.top, 1)
                }
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 56)
            .background(Color.clear)
            .foregroundColor(Color("White"))
            .padding(.bottom, 10)
        case .standart:
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("White"))
                
                HStack(alignment: .center, spacing: 20) {
                    
                    Text(text)
                        .font(.custom("DM Sans", size: 18))
                        .fontWeight(.medium)
                    
                    Image(systemName: "chevron.right")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.top, 1)
                }
                .foregroundColor(Color("GradientEnd"))
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 58)
            .background(Color.clear)
            .foregroundColor(Color("White"))
            .padding(.bottom, 10)
        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(text: "Continue")
//    }
//}
