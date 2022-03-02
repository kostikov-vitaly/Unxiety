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
    
    func pushMessage() {
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        let yearString = dateFormatter.string(from: date)
        
        dateFormatter.dateFormat = "LLLL"
        let nameOfMonth = dateFormatter.string(from: date)
        
        let currentDate = nameOfMonth + " " + yearString
        let shortDate = Date.now.formatted(date: .abbreviated, time: .omitted)
        print(currentDate)
        print(shortDate)
        
//        guard let index = months.firstIndex(where: { $0.title == currentDate }) else {
//            months.append(
//                Month(title: currentDate,
//                      messages: [Message(text: currentUser.tempMessage, date: shortDate)],
//                      isExpanded: true))
//            currentUser.tempMessage = ""
//            return
//        }
//        
//        let message = Message(text: currentUser.tempMessage, date: "\(Date.now.formatted(date: .abbreviated, time: .omitted))")
//        let messages = months[index].messages
//        months[index] = Month(date: currentDate, messages: messages + [subtask], isExpanded: true)
    }
}
