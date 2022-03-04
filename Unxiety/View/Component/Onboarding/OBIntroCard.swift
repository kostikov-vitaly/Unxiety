//
//  OBIntroCard.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBIntroCard: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    // isFocused
    private enum Field: Hashable {
        case username
    }
    @FocusState private var focusedField: Field?
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Color("White")
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            
            VStack {
                
                Spacer(minLength: 16)
                
                Button(action: {
                    showingAlert = true
                }) {
                    ZStack {
                        Color("AvatarColor")
                            .frame(minWidth: 0, idealWidth: 120, maxWidth: 200, minHeight: 0, idealHeight: 120, maxHeight: 200, alignment: .center)
                            .clipShape(Circle())
                        
                        Image("Plus")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 32, height: 32, alignment: .center)
                    }
                }
                .alert(AlertContent.content[0].text, isPresented: $showingAlert) {
                    Button(AlertContent.content[0].button, role: .cancel) { }
                }
                
                Spacer()
                
                HStack {
                    TextField(OBContent.content[3].placeholder ?? "", text: $viewModel.currentUser.username)
                        .font(.custom("DM Sans", size: 15).weight(.medium))
                        .foregroundColor(Color("Gray900"))
                        .focused($focusedField, equals: .username)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 16)
                        .overlay(RoundedRectangle(cornerRadius: 12).stroke(focusedField == .username ? Color("GradientEnd500") : Color("Gray600"), lineWidth: 3))
                }
                .cornerRadius(12)
                .padding(.top, 8)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                
            }
        }
        .cornerRadius(16)
        .padding(.vertical, 20)
    }
}

//struct OBIntroCard_Previews: PreviewProvider {
//    static var previews: some View {
//        OBIntroCard()
//    }
//}
