//
//  finalView.swift
//  Questionnaire
//
//  Created by Kilorafix on 17/01/2023.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack{
            VStack {
                Image(systemName: "link").font(.largeTitle).foregroundColor(Color.yellow).padding()
                Text("Uit onze berekeningen is gebleken dat Kilian met 100% zekerheid de ideale schoonzoon is!").padding()
                HStack {
                    Image(systemName: "info")
                    Text("PS: De informatie in deze app is bindend, bedankt voor jullie feedback en de hand van jullie dochter!").padding()
                }
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
