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
                ForEach(0..<qd.tQuestions.count, id: \.self) { index in
                    QuestionAnswerView(question: qd.tQuestions[index].question, tAnswerValue: $qd.tQuestions[index].answer, dAnswerValue: $qd.dQuestions[index].answer)
                        .padding()
                }
            }
            NavigationLink("bereken de antwoorden..") {
                LoadingView()
            }
        }
    }
}

struct Questionnaire_Previews: PreviewProvider {
    static var previews: some View {
        Questionnaire()
    }
}
