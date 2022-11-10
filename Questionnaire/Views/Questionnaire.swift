//
//  Questionnaire.swift
//  Questionnaire
//
//  Created by Kilorafix on 07/11/2022.
//

import SwiftUI

struct Questionnaire: View {
    @EnvironmentObject var qd : QuestionnaireData
    
    var body: some View {
        ScrollView {
            VStack{
                ForEach(0..<qd.questions.count, id: \.self) { index in
                    QuestionAnswerView(question: qd.questions[index].question, answerValue: $qd.questions[index].answer)
                        .padding()
                }
            }
        }
    }
}

struct Questionnaire_Previews: PreviewProvider {
    static var previews: some View {
        Questionnaire()
    }
}
