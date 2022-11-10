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
    var answer: Double = 0.0
    
    static func == (lhs: QuestionAndAnswer, rhs: QuestionAndAnswer) -> Bool {
        lhs.id.uuidString <= rhs.id.uuidString
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

class QuestionnaireData: ObservableObject {
    let operationMode: QuestionnaireMode = QuestionnaireMode.Nest
    @Published var questions: [QuestionAndAnswer] = [
        QuestionAndAnswer(question: "is grappig", answer: 0.0),
        QuestionAndAnswer(question: "is attent", answer: 0.0),
        QuestionAndAnswer(question: "is slim", answer: 5.0),
        QuestionAndAnswer(question: "is ambitieus", answer: 3.0),
        QuestionAndAnswer(question: "emotioneel intelligent", answer: 1.0),
        QuestionAndAnswer(question: "doet moeite voor familie", answer: 7.0),
        QuestionAndAnswer(question: "is altijd zichzelf", answer: 3.0),
        QuestionAndAnswer(question: "kan luisteren", answer: 0.0),
        QuestionAndAnswer(question: "gunt vrijheid", answer: 0.0),
        QuestionAndAnswer(question: "doet moeite voor familie", answer: 0.0)
    ]
}
