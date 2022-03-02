//
//  MainGoalEditView.swift
//  SelfApp
//
//  Created by Vitaly on 25/02/22.
//

import SwiftUI

struct MainGoalEditView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    // isFocused
    private enum Field: Hashable {
        case goal
    }
    @FocusState private var focusedField: Field?
    
    @Binding var goal: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("Gray100")
                .onTapGesture {
                    focusedField = .goal
                }
            
            HStack(alignment: .bottom, spacing: 16) {
                ZStack(alignment: .topLeading) {
                    Color("White")
                        .frame(height: 68)
                        .cornerRadius(12)
                    TextEditor(text: $goal)
                        .focused($focusedField, equals: .goal)
                        .font(.custom("DM Sans", size: 15).weight(.medium))
                        .foregroundColor(Color("Gray900"))
                        .onAppear(perform: {
                            focusedField = .goal
                            goal = viewModel.currentUser.userGoal
                        })
                        .onDisappear(perform: {
                            viewModel.saveGoal(goal: goal)
                        })
                        .frame(height: 52)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                    if goal.isEmpty {
                        Text(PlaceholderContent.content[0].text)
                            .font(.custom("DM Sans", size: 15).weight(.medium))
                            .foregroundColor(Color("Gray700"))
                            .padding(.top, 14)
                            .padding(.horizontal, 16)
                    }
                }
                .onTapGesture {
                    focusedField = .goal
                }
                
                Button(action: {
                    
                    withAnimation(.easeOut(duration: 0.1)) {
                        viewModel.hideGoalEditing(goal: goal)
                        viewModel.isSubTargetVisible = true
                    }
                    
                }) {
                    ZStack {
                        
                        if !goal.isEmpty {
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
                            Circle()
                                .fill(Color("GradientEnd").opacity(0))
                                .frame(width: 40, height: 40)
                                .padding(.leading, 20)
                                .clipShape(Circle())
                        }
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color("GradientEnd"))
                    }
                }
            }
            .padding(.top, 16)
            .padding(.bottom, focusedField == .goal ? 16 : 40)
            .padding(.horizontal, 20)
        }
        .frame(height: focusedField == .goal ? 96 : 120)
        .transition(.asymmetric(insertion: .move(edge: .top), removal: .opacity))
    }
}

//struct MainGoalEditView_Previews: PreviewProvider {
//
//    @EnvironmentObject var viewModel: ViewModel
//
//    static var previews: some View {
//        MainGoalEditView(goal: Binding<String>).environmentObject(ViewModel())
//    }
//}
