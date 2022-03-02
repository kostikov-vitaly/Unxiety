//
//  ChatFrontView.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct ChatFrontView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    // isFocused
    private enum Field: Hashable {
        case message
    }
    @FocusState private var focusedField: Field?
    
    @State var text: String = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("Gray100")
                .onTapGesture {
                    focusedField = .message
                }
            
            HStack(alignment: .bottom, spacing: 16) {
                ZStack(alignment: .topLeading) {
                    Color("White")
                        .frame(height: 68)
                        .cornerRadius(12)
                    TextEditor(text: $text)
                        .focused($focusedField, equals: .message)
                        .font(.custom("DM Sans", size: 15).weight(.medium))
                        .foregroundColor(Color("Gray900"))
                        .onAppear(perform: {
                            text = viewModel.currentUser.tempMessage
                        })
                        .onDisappear(perform: {
                            viewModel.saveTempMessage(message: text)
                        })
                        .frame(height: 52)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                    if text.isEmpty {
                        Text(PlaceholderContent.content[1].text)
                            .font(.custom("DM Sans", size: 15).weight(.medium))
                            .foregroundColor(Color("Gray600"))
                            .padding(.top, 14)
                            .padding(.horizontal, 16)
                    }
                }
                .onTapGesture {
                    focusedField = .message
                }
                
                Button(action: {
                    
                    //                    withAnimation(.easeOut(duration: 0.5)) {
                    //                        viewModel.isDiaryFlipped = true
                    //                    }
                    
                }) {
                    ZStack {
                        
                        if !text.isEmpty {
                            Circle()
                                .fill(Color("GradientEnd100"))
                                .frame(width: 40, height: 40)
                                .padding(.leading, 20)
                                .clipShape(Circle())
                            Circle()
                                .stroke(Color("GradientEnd"), lineWidth: 2)
                                .frame(width: 40, height: 40)
                        } else {
                            Circle()
                                .stroke(Color("Gray500"), lineWidth: 2)
                                .frame(width: 40, height: 40)
                                .onTapGesture {
                                    viewModel.currentUser.tempMessage = text
//                                    viewModel.pushMessage(text: text)
                                    viewModel.currentUser.tempMessage = ""
                                }
                            Circle()
                                .fill(Color("GradientEnd").opacity(0))
                                .frame(width: 40, height: 40)
                                .padding(.leading, 20)
                                .clipShape(Circle())
                                .onTapGesture {
                                    viewModel.currentUser.tempMessage = text
//                                    viewModel.pushMessage(text: text)
                                    viewModel.currentUser.tempMessage = ""
                                }
                        }
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color("GradientEnd"))
                    }
                }
            }
            .padding(.top, 16)
            .padding(.bottom, focusedField == .message ? 16 : 40)
            .padding(.horizontal, 20)
        }
        .frame(height: focusedField == .message ? 96 : 120)
    }
}

struct ChatFrontView_Previews: PreviewProvider {
    static var previews: some View {
        ChatFrontView().environmentObject(ViewModel())
    }
}
