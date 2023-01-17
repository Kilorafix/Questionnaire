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
    @Published var tQuestions: [QuestionAndAnswer] = [
        QuestionAndAnswer(question: "Kilian is grappig", answer: 0.0),
        QuestionAndAnswer(question: "Kilian is attent", answer: 0.0),
        QuestionAndAnswer(question: "Kilian is slim", answer: 0.0),
        QuestionAndAnswer(question: "Kilian is ambitieus", answer: 0.0),
        QuestionAndAnswer(question: "Kilian emotioneel intelligent", answer: 0.0),
        QuestionAndAnswer(question: "Kilian doet moeite voor familie", answer: 0.0),
        QuestionAndAnswer(question: "Kilian is altijd zichzelf", answer: 0.0),
        QuestionAndAnswer(question: "Kilian kan luisteren", answer: 0.0),
        QuestionAndAnswer(question: "Kilian gunt Laura vrijheid", answer: 0.0),
        QuestionAndAnswer(question: "Kilian biedt steun", answer: 0.0)
    ]
    @Published var dQuestions: [QuestionAndAnswer] = [
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0),
        QuestionAndAnswer(question: "", answer: 0.0)
    ]
}
