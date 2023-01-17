//
//  QuestionAnswerView.swift
//  Questionnaire
//
//  Created by Kilorafix on 07/11/2022.
//

import SwiftUI

struct QuestionAnswerView: View {
    var question: String
    @Binding var tAnswerValue: Double
    @Binding var dAnswerValue: Double
    var body: some View {
        VStack {
            Text(question).padding()
            VStack {
                HStack {
                    Text("T: ")
                    Text("0")
                    Slider(value: $tAnswerValue, in:0.0...10.0, step:1.0)
                    Text("\(Int(tAnswerValue))")
                }
                HStack {
                    Text("D: ")
                    Text("0")
                    Slider(value: $dAnswerValue, in:0.0...10.0, step:1.0)
                    Text("\(Int(dAnswerValue))")
                }
            }
            
        }
    }
}

struct QuestionAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionAnswerView(question: "what world is",
                           tAnswerValue: .constant(4.0),
                           dAnswerValue: .constant(4.0))
    }
}
