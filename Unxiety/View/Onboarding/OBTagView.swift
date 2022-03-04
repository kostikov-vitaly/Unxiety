////
////  OBTagView.swift
////  SelfApp
////
////  Created by Vitaly on 28/02/22.
////
//
//import SwiftUI
//
//struct OBTagView: View {
//    
//    // viewModel binding
//    @EnvironmentObject var viewModel: ViewModel
//    
//    var body: some View {
//        ZStack(alignment: .topLeading) {
//            
//            GradientView()
//            
//            VStack(alignment: .center, spacing: 0) {
//                VStack(alignment: .leading, spacing: 0) {
//                    
//                    OBHeader()
//                    VStack(alignment: .leading, spacing: 20) {
//                        OBTitle(title: OBContent.content[5].title)
//                        OBDescr(descr: OBContent.content[5].descr ?? "")
//                    }
//                    
//                    Spacer()
//                    
//                    NavigationLink(destination:
//                                    Home()
//                    ) {
//                        ButtonView(buttonType: .standart, text: OBContent.content[5].button)
//                    }
//                    
//                }
//                .padding(.horizontal, 20)
//            }
//            
//        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//    }
//}
//
////struct OBTagView_Previews: PreviewProvider {
////    static var previews: some View {
////        OBTagView()
////    }
////}
