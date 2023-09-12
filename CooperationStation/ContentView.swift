//
//  ContentView.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex: Int = 0

    var body: some View {
        NavigationView {
            VStack {
                CriteriaView(criteria: CooperationCriteria.criteriaList[currentIndex])

                Button(action: {
                    currentIndex = (currentIndex + 1) % CooperationCriteria.criteriaList.count
                }, label: {
                    Text("Next")
                })
                .padding()
            }
            .navigationBarTitle("Cooperation Criteria")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
