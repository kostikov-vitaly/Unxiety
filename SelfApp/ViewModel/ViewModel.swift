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
            title: "October 2021",
            messages: [
                Message(text: "Had flight to Dubai", date: "18/10"),
                Message(text: "Finish our work in time", date: "20/10"),
                Message(text: "Spent 4 hours with family", date: "21/10"),
                Message(text: "Learn how to play billiard", date: "22/10")
            ]),
        
        Month(
            title: "November 2021",
            messages: [
                Message(text: "Had flight to Dubai", date: "18/11"),
                Message(text: "Finish our work in time", date: "20/11"),
                Message(text: "Spent 4 hours with family", date: "21/11"),
                Message(text: "Learn how to play billiard", date: "22/11")
            ]),
        
        Month(
            title: "December 2021",
            messages: [
                Message(text: "Had flight to Dubai", date: "18/12"),
                Message(text: "Finish our work in time", date: "20/12"),
                Message(text: "Spent 4 hours with family", date: "21/12"),
                Message(text: "Learn how to play billiard", date: "22/12")
            ]),
        
        Month(
            title: "January 2022",
            messages: [
                Message(text: "Had flight to Dubai", date: "18/01"),
                Message(text: "Finish our work in time", date: "20/01"),
                Message(text: "Spent 4 hours with family", date: "21/01"),
                Message(text: "Learn how to play billiard", date: "22/01")
            ]),
        
        Month(
            title: "February 2022",
            messages: [
                Message(text: "Had flight to Dubai", date: "18/02"),
                Message(text: "Finish our work in time", date: "20/02"),
                Message(text: "Spent 4 hours with family", date: "21/02"),
                Message(text: "Learn how to play billiard", date: "22/02")
            ])
    ]
    
    func pushMessage(text: String) {
        
        let date = Date()
        let dateFormatterMonth = DateFormatter()
        
        dateFormatterMonth.dateFormat = "yyyy"
        let yearString = dateFormatterMonth.string(from: date)
        
        dateFormatterMonth.dateFormat = "LLLL"
        let nameOfMonth = dateFormatterMonth.string(from: date)
        
        let currentMonth = nameOfMonth + " " + yearString // March 2022
        
        let dateFormatterDate = DateFormatter()
        dateFormatterDate.dateFormat = "MM/dd"
        
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
