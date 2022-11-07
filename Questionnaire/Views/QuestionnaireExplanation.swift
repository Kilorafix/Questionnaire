//
//  QuestionnaireExplanation.swift
//  Questionnaire
//
//  Created by Kilorafix on 07/11/2022.
//

import SwiftUI

struct QuestionnaireExplanation: View {
    @StateObject var questionnaireData = QuestionnaireData()
    
    var body: some View {
        VStack{
            Image(systemName: "questionmark.bubble")
                .font(.largeTitle).padding()
            Text("Deze app loodst je door 10 vragen.\rOp het einde van deze vragenlijst \rkrijg je een score te zien.").padding().frame(width:300)
            Text("De verwachtte antwoorden zijn\rtelkens een waarde tussen 0 en 10.").padding().frame(width:300)
            Text("Hierbij is:\r0 oneens\r10 helemaal eens.").padding().frame(width:300)
            NavigationLink("laten we beginnen!") {
                Questionnaire()
                    .environmentObject(questionnaireData)
            }
            
        }
    }
}

struct QuestionnaireExplanation_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireExplanation()
    }
}
