//
//  ResultView.swift
//  Questionnaire
//
//  Created by Kilorafix on 17/01/2023.
//

import SwiftUI

struct LoadingView: View {
//    @State var count = 0.0;
    @State private var circleColorChanged = false;
    @State private var heartColorChanged = false;
    @State private var heartSizeChanged = false;
    @State private var isLoading = true;
    
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
             
                Image(systemName: "heart.fill")
                    .foregroundColor(heartColorChanged ? .red : .white)
                    .font(.system(size: 100))
                    .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
            }.onAppear(perform: {
                loadingAnimation()
            })
            if (isLoading) {
                Text("Berekenen..")
            } else {
                NavigationLink("Klaar!!") {
                    ResultView()
                }
            }
        }
        
    }
    func loadingAnimation () {
        withAnimation(Animation.easeInOut(duration: 0.6).repeatCount(9)) {
            circleColorChanged.toggle()
            heartSizeChanged.toggle()
            heartColorChanged.toggle()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.6 * 10)) {
            isLoading.toggle()
        }
    }
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
