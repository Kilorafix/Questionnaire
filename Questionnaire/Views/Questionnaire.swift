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
                ForEach(qd.questions, id: \.id) { qa in
                    QuestionAnswerView(question: qa.question, answerValue: qa.$answer)
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
