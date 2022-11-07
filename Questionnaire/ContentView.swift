//
//  ContentView.swift
//  Questionnaire
//
//  Created by Kilorafix on 07/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to the app")
                Image(systemName: "figure.wave")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                NavigationLink {
                    QuestionnaireExplanation()
                } label: {
                    HStack {
                        Text("Let's get started!")
                        Image(systemName: "arrow.right")
                    }
                }
                
                
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
