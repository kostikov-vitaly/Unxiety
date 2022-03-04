//
//  ViewModel.swift
//  SelfApp
//
//  Created by Vitaly on 26/02/22.
//

import Foundation

class ViewModel: ObservableObject {
    
    class Goal: ObservableObject {
        @Published var isSubTargetVisible: Bool = true
    }
    
    @Published var currentUser: User = User()
    
    // home
    @Published var isDiaryFlipped: Bool = false
    
    // goal
    @Published var isGoalEditPresented: Bool = false
    @Published var isSubTargetVisible: Bool = true
    
    // message processing
    func saveTempMessage(message: String) {
        currentUser.tempMessage = message
    }
    
    // goal processing
    func saveGoal(goal: String) {
        currentUser.userGoal = goal
    }
    
    func showGoalEditing() {
        isGoalEditPresented = true
    }
    
    func hideGoalEditing(goal: String) {
        saveGoal(goal: goal)
        isGoalEditPresented = false
    }
    
    @Published var months: [Month] = [
        
        Month(
            title: NSLocalizedString("April", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "08/04"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "12/04"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "16/04"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "19/04")
            ]),
        
        Month(
            title: NSLocalizedString("May", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "08/05"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "12/05"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "16/05"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "19/05")
            ]),
        
        Month(
            title: NSLocalizedString("June", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "08/06"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "12/06"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "16/06"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "19/06")
            ]),
        
        Month(
            title: NSLocalizedString("July", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "08/07"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "12/07"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "16/07"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "19/07")
            ]),
        
        Month(
            title: NSLocalizedString("August", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "08/08"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "12/08"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "16/08"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "19/08")
            ]),
        
        Month(
            title: NSLocalizedString("September", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "08/09"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "12/09"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "16/09"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "19/09")
            ]),
        
        Month(
            title: NSLocalizedString("October", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "18/10"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "20/10"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "21/10"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "22/10")
            ]),
        
        Month(
            title: NSLocalizedString("November", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "18/11"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "20/11"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "21/11"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "22/11")
            ]),
        
        Month(
            title: NSLocalizedString("December", comment: "") + " 2021",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "18/12"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "20/12"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "21/12"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "22/12")
            ]),
        
        Month(
            title: NSLocalizedString("January", comment: "") + " 2022",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "18/01"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "20/01"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "21/01"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "22/01")
            ]),
        
        Month(
            title: NSLocalizedString("February", comment: "") + " 2022",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "18/02"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "20/02"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "21/02"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "22/02")
            ]),
        
        Month(
            title: NSLocalizedString("March", comment: "") + " 2022",
            messages: [
                Message(text: NSLocalizedString("Had flight to Dubai", comment: ""), date: "01/03"),
                Message(text: NSLocalizedString("Finish our work in time", comment: ""), date: "01/03"),
                Message(text: NSLocalizedString("Spent 4 hours with family", comment: ""), date: "02/03"),
                Message(text: NSLocalizedString("Learn how to play billiard", comment: ""), date: "03/03")
            ],
            isExpanded: true
        )
    ]
    
    func pushMessage(text: String) {
        
        let date = Date()
        let dateFormatterMonth = DateFormatter()
        
        dateFormatterMonth.dateFormat = "yyyy"
        let yearString = dateFormatterMonth.string(from: date)
        
        dateFormatterMonth.dateFormat = "LLLL"
        let nameOfMonth = dateFormatterMonth.string(from: date).capitalized(with: .current)
        
        let currentMonth = nameOfMonth + " " + yearString // March 2022
        
        let dateFormatterDate = DateFormatter()
        dateFormatterDate.dateFormat = "dd/MM"
        
        let currentDate = dateFormatterDate.string(from: date) // 03/03
        
        guard let index = months.firstIndex(where: {$0.title == currentMonth}) else {
            months.append(Month(title: currentMonth, messages: [Message(text: text, date: currentDate)], isExpanded: true))
            return
        }
        
        let message = Message(text: text, date: currentDate)
        let messages = months[index].messages
        months[index] = Month(title: currentMonth, messages: messages + [message], isExpanded: true)
        currentUser.tempMessage = ""
    }
}
