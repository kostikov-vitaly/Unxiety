//
//  GoalView.swift
//  SelfApp
//
//  Created by Vitaly on 01/03/22.
//

import SwiftUI

struct GoalView: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    @State var isSubTargetVisible: Bool = true
    @State var goal: String
    
    init(goal: String) {
        self.goal = goal
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            
            GradientView()
            
            VStack(alignment: .leading, spacing: 0) {
                PageHeader(title: HeaderContent.content[2].title, isGoal: true)
                HStack(alignment: .center) {
                    Text("Main target")
                        .font(.custom("DM Sans", size: 34))
                        .fontWeight(.bold)
                        .foregroundColor(Color("White"))
                    Spacer()
                    Image(systemName: "pencil")
                        .font(.system(size: 21, weight: .bold))
                        .foregroundColor(Color("White"))
                        .frame(width: 40, height: 40, alignment: .trailing)
                        .onTapGesture {
                            
                            withAnimation(.easeIn(duration: 0.1)) {
                                viewModel.isSubTargetVisible = false
                                viewModel.showGoalEditing()
                            }
                        }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                
                Text(viewModel.currentUser.userGoal)
                    .font(.custom("DM Sans", size: 21))
                    .fontWeight(.medium)
                    .foregroundColor(Color("White"))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                    .onTapGesture {
                        
                        withAnimation(.easeIn(duration: 0.1)) {
                            viewModel.isSubTargetVisible = false
                            viewModel.showGoalEditing()
                        }
                    }
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height/4, alignment: .topLeading)
                
                if viewModel.isSubTargetVisible {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .center) {
                            Text("Subtargets")
                                .font(.custom("DM Sans", size: 34))
                                .fontWeight(.bold)
                                .foregroundColor(Color("White"))
                            Spacer()
                            Image(systemName: "pencil")
                                .font(.system(size: 21, weight: .bold))
                                .foregroundColor(Color("Gray600"))
                                .frame(width: 40, height: 40, alignment: .trailing)
                                .onTapGesture {
                                    // subtarget editing
                                }
                        }
                        
                        List {
                            ForEach(SubTarget.content, id:\.id) { subtarget in
                                Text(subtarget.title)
                                    .font(.custom("DM Sans", size: 15))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("Gray900"))
                            }
                            .listRowSeparatorTint(Color("Gray100"))
                        }
                        .listStyle(.plain)
                        .cornerRadius(12)
                        .padding(.top, 12)
                    }
                    .padding(.horizontal, 20)
                } else {
                    EmptyView()
                }
                
                Spacer(minLength: 24)
                
                if viewModel.isGoalEditPresented {
                    MainGoalEditView(goal: $goal).transition(.opacity)
                } else {
                    EmptyView()
                }
            }
        }
        .onDisappear(perform: {
            viewModel.hideGoalEditing(goal: goal)
        })
        .onTapGesture {
            
            withAnimation(.easeOut(duration: 0.1)) {
                viewModel.hideGoalEditing(goal: goal)
                viewModel.isSubTargetVisible = true
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//struct GoalView_Previews: PreviewProvider {
//    static var previews: some View {
//        GoalView(goal: ViewModel().currentUser.userGoal).environmentObject(ViewModel())
//    }
//}
