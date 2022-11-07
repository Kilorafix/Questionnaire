//
//  QuestionAnswerView.swift
//  Questionnaire
//
//  Created by Kilorafix on 07/11/2022.
//

import SwiftUI

struct QuestionAnswerView: View {
    var question: String
    @Binding var answerValue: Double
    var body: some View {
        VStack {
            Text(question).padding()
            HStack {
                Text("0")
                Slider(value: $answerValue, in:0.0...10.0, step:1.0)
                Text("\(Int(answerValue))")
            }
        }
    }
}

struct QuestionAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionAnswerView(question: "what world is",
                           answerValue: .constant(4.0))
    }
}
