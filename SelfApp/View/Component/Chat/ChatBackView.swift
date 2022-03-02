//
//  ChatBackView.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct ChatBackView: View {

    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel

    // isFocused
    private enum Field: Hashable {
        case tag
    }
    @FocusState private var focusedField: Field?

    @State private var tag: String = ""

    var body: some View {
        ZStack(alignment: .bottom) {
            Color("Gray100")

            HStack(alignment: .bottom, spacing: 20) {
                ZStack(alignment: .topLeading) {

                    TextEditor(text: $tag)
                        .cornerRadius(12)
                        .focused($focusedField, equals: .tag)
                        .font(.custom("DM Sans", size: 14))
                        .foregroundColor(Color("Gray900"))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(focusedField == .tag ? Color("GradientEnd") : Color("Gray600"), lineWidth: 2))
                        .frame(height: 64)
                        .onAppear(perform: {
//                            tag = viewModel.currentTag
                        })
                        .onDisappear(perform: {
//                            viewModel.currentTag = tag
                        })
                }

                Button(action: {
                    // перейти к tags
                }) {
                    ZStack {

                        if !tag.isEmpty {
                            Circle()
                                .stroke(Color("GradientEnd"), lineWidth: 2)
                                .frame(width: 40, height: 40)
                        } else {
                            Circle()
                                .stroke(Color("Gray600"), lineWidth: 2)
                                .frame(width: 40, height: 40)
                            Circle()
                                .fill(Color("GradientEnd").opacity(0))
                                .frame(width: 40, height: 40)
                                .padding(.leading, 20)
                                .clipShape(Circle())
                        }

                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .semibold))
                            .rotationEffect(.degrees(270))
                            .foregroundColor(Color("GradientEnd"))
                    }
                }
            }
            .padding()
        }
        .frame(height: 96)
    }
}

//struct ChatBackView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatBackView().environmentObject(ViewModel())
//    }
//}
