//
//  OBGoalView.swift
//  SelfApp
//
//  Created by Vitaly on 28/02/22.
//

import SwiftUI

struct OBGoalView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    // isFocused
    private enum Field: Hashable {
        case goal
    }
    @FocusState private var focusedField: Field?
    
    @State var goal: String = ""
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            GradientView()
            
            VStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    OBHeader()
                    VStack(alignment: .leading, spacing: 20) {
                        OBTitle(title: OBContent.content[4].title)
                        OBDescr(descr: OBContent.content[4].descr ?? "")
                    }
                    
                    ZStack(alignment: .topLeading) {
                        Color("White")
                            .frame(height: 80)
                            .cornerRadius(12)
                        TextEditor(text: $goal)
                            .focused($focusedField, equals: .goal)
                            .font(.custom("DM Sans", size: 14).weight(.medium))
                            .foregroundColor(Color("Gray900"))
                            .onAppear(perform: {
                                goal = viewModel.currentUser.userGoal
                            })
                            .onDisappear(perform: {
                                viewModel.saveGoal(goal: goal)
                            })
                            .frame(height: 52)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 12)
                        if goal.isEmpty {
                            Text(OBContent.content[4].placeholder ?? "")
                                .font(.custom("DM Sans", size: 15).weight(.medium))
                                .foregroundColor(Color("Gray700"))
                                .padding(.top, 14)
                                .padding(.horizontal, 16)
                        }
                    }
                    .simultaneousGesture(
                        TapGesture()
                            .onEnded {
                        focusedField = .goal
                    })
                    .padding(.vertical, 24)
                    
                    Spacer()
                    
                    NavigationLink(destination: Home().statusBar(hidden: false)) {
                        ButtonView(buttonType: .standart, text: OBContent.content[5].button)
                    }
                    
                }
                .padding(.horizontal, 20)
            }
            
        }
        .onTapGesture {
            focusedField = nil
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
//
//struct OBGoalView_Previews: PreviewProvider {
//    static var previews: some View {
//        OBGoalView()
//    }
//}
