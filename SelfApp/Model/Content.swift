//
//  Content.swift
//  SelfApp
//
//  Created by Vitaly on 01/03/22.
//

import Foundation

struct OBContent {
    var title: String
    var descr: String?
    var descr2: String?
    var descr3: String?
    var descr4: String?
    var placeholder: String?
    var button: String
}

struct AlertContent {
    var text: String
    var button: String
}

struct SegmentedContent {
    var title: String
}

struct HeaderContent {
    var title: String
}

struct PlaceholderContent {
    var text: String
}

struct SubTarget {
    var id: UUID = UUID()
    var title: String
}

extension OBContent {
    static let content: [OBContent] = [
        OBContent(
            title: NSLocalizedString("Welcome", comment: ""),
            button: NSLocalizedString("Continue", comment: "")),
        
        OBContent(
            title: NSLocalizedString("Grow your self-gratitude with Gratus", comment: ""),
            descr: NSLocalizedString("Gratus is a gratitude diary which helps you to grow your self-gratitude, positivity, and optimism", comment: ""),
            button: NSLocalizedString("Continue", comment: "")),
        
        OBContent(
            title: NSLocalizedString("Gratus is easy to use", comment: ""),
            descr: NSLocalizedString("Grow you self-gratitude by creating reflections with positive emotions you feel right now or felt a few days ago.", comment: ""),
            descr2: NSLocalizedString("Use the diary to sum up your good feelings. Don’t try to proceed with only big appreciations - in contrast, pay more attention to the small ones.", comment: ""),
            descr3: NSLocalizedString("Follow your activity status using statistics for better understanding if your life goal meets your reflections with the help of a tag system, created by you.", comment: ""),
            descr4: NSLocalizedString("Please note, Gratus is not a psychological help service and cannot provide any psychological help on the subject. Having any condition, it is highly recommended to see your doctor", comment: ""),
            button: NSLocalizedString("Continue", comment: "")),
        
        OBContent(
            title: NSLocalizedString("Now, what is your name?", comment: ""),
            descr: NSLocalizedString("Please, type your name in the field below and upload your avatar", comment: ""),
            placeholder: NSLocalizedString("Martin", comment: ""),
            button: NSLocalizedString("Submit", comment: "")),
        
        OBContent(
            title: NSLocalizedString("Define your goal", comment: ""),
            descr: NSLocalizedString("Type your life goal to easily see how it corresponds with the positive activity data you will be collecting", comment: ""),
            placeholder: NSLocalizedString("Example: Befriend yourself", comment: ""),
            button: NSLocalizedString("Continue", comment: "")),
        
        OBContent(
            title: NSLocalizedString("Define your tags", comment: ""),
            descr: NSLocalizedString("Decide which tags (up to 4) for your positive activity you will be using by creating them", comment: ""),
            placeholder: NSLocalizedString("Write down your tag title here", comment: ""),
            button: NSLocalizedString("Start your journey", comment: ""))
    ]
}


extension AlertContent {
    static let content: [AlertContent] = [
        AlertContent(
            text: NSLocalizedString("Avatar choosing panel will be here", comment: ""),
            button: NSLocalizedString("OK", comment: ""))
        ]
}

extension SegmentedContent {
    static let content: [SegmentedContent] = [
        SegmentedContent(
            title: NSLocalizedString("Diary", comment: "")),
        SegmentedContent(
            title: NSLocalizedString("Data", comment: "")),
        ]
}

extension HeaderContent {
    static let content: [HeaderContent] = [
            HeaderContent(
                title: NSLocalizedString("Journal", comment: "")),
            HeaderContent(
                title: NSLocalizedString("Statistic", comment: "")),
            HeaderContent(
                title: NSLocalizedString("Your track", comment: "")),
            HeaderContent(
                title: NSLocalizedString("Account", comment: "")),
            HeaderContent(
                title: NSLocalizedString("Hello", comment: ""))
        ]
}

extension PlaceholderContent {
    static let content: [PlaceholderContent] = [
        PlaceholderContent(
            text: NSLocalizedString("Write down your main life goal that you are focusing on at this moment", comment: "")),
        PlaceholderContent(
            text: NSLocalizedString("Write down the best positive thing of this week", comment: ""))
    ]
}

extension SubTarget {
    static let content: [SubTarget] = [
        SubTarget(
            title: NSLocalizedString("Subtarget #1 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #2 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #3 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #4 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #5 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #6 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #7 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #8 (will be available soon)", comment: "")),
        SubTarget(
            title: NSLocalizedString("Subtarget #9 (will be available soon)", comment: ""))
    ]
}
