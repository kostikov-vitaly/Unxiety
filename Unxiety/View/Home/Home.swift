//
//  ContentView.swift
//  SelfApp
//
//  Created by Vitaly on 22/02/22.
//

import SwiftUI

struct Home: View {
    
    // viewModel binding
    @EnvironmentObject var viewModel: ViewModel
    
    enum ScreenType: String, CaseIterable, Identifiable {
        case diary = "Diary"
        case data = "Data"
        
        var id: ScreenType { self }
        
        func localizedString() -> String {
            NSLocalizedString(self.rawValue, comment: "")
        }
        
        static func getTitleFor(title: ScreenType) -> String {
            title.localizedString()
        }
    }
    
    @State var screenType = ScreenType.diary
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("GradientEnd").opacity(0.7))
        UISegmentedControl.appearance().backgroundColor = UIColor(Color("GradientStart"))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        ZStack {
            Color("White")
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            
            VStack(spacing: 0) {
                
                HomeHeader(title: screenType == .diary ? HeaderContent.content[0].title : HeaderContent.content[1].title)
                
                VStack(spacing: 20) {
                    
                    NavigationLink(destination: GoalView(goal: viewModel.currentUser.userGoal)) {
                        GoalPanelView().frame(height: 32)
                    }
                    
                    Picker("Mode", selection: $screenType) {
                        ForEach(ScreenType.allCases) { screen in
                            Text(ScreenType.getTitleFor(title: screen))
                        }
                    }
                    .pickerStyle(.segmented)
                    
                }
                .padding(.bottom, 10)
                .padding(.horizontal, 20)
                
                Rectangle()
                    .fill(Color("Gray100"))
                    .frame(height: 2)
                
                switch screenType {
                case .diary:
                    DiaryView()
                case .data:
                    DataView()
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
//                }
//            }
//            .padding(.top, 8)
//        }
//        .edgesIgnoringSafeArea([.bottom, .vertical])
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//    }

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home().environmentObject(ViewModel())
//    }
//}
