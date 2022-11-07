//
//  QuestionnaireData.swift
//  Questionnaire
//
//  Created by Kilorafix on 07/11/2022.
//

import Foundation
import SwiftUI
import Combine

enum QuestionnaireMode {
    case Bird, Nest
}

struct QuestionAndAnswer: Hashable {
    let id = UUID()
    var question: String = ""
    @State var answer: Double = 0.0
    
    static func == (lhs: QuestionAndAnswer, rhs: QuestionAndAnswer) -> Bool {
        lhs.id.uuidString <= rhs.id.uuidString
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

class QuestionnaireData: ObservableObject {
    let operationMode: QuestionnaireMode = QuestionnaireMode.Nest
    var questions: [QuestionAndAnswer] = [
        QuestionAndAnswer(question: "0 is grappig", answer: 0.0),
        QuestionAndAnswer(question: "1 is attent", answer: 0.0),
        QuestionAndAnswer(question: "2 is slim", answer: 5.0),
        QuestionAndAnswer(question: "3 is ambitieus", answer: 3.0),
        QuestionAndAnswer(question: "4 emotioneel intelligent", answer: 1.0),
        QuestionAndAnswer(question: "5 doet moeite voor familie", answer: 7.0),
        QuestionAndAnswer(question: "6 is altijd zichzelf", answer: 3.0),
        QuestionAndAnswer(question: "7 kan luisteren", answer: 0.0),
        QuestionAndAnswer(question: "8 gunt vrijheid", answer: 0.0),
        QuestionAndAnswer(question: "9 doet moeite voor familie", answer: 0.0)
    ]
}
