//
//  ContentView.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex: Int = 0
    @State private var rating: Int = 5
    @State private var response: String = ""
    
    @ObservedObject var responseStore = ResponseStore()

    var body: some View {
        NavigationView {
            VStack {
                CriteriaView(
                    criteria: CooperationCriteria.criteriaList[currentIndex],
                    rating: $rating,
                    response: $response)

                Button(action: {
                    if let criteria = CooperationCriteria.criteriaList[safe: currentIndex] {
                        responseStore.criteriaRatingsAndResponses[criteria] = (rating: rating, response: response.isEmpty ? nil : response)
                        currentIndex = (currentIndex + 1) % CooperationCriteria.criteriaList.count
                        rating = 5
                        response = ""
                    }
                }, label: {
                    Text("Next")
                })
                .padding()

                
                Spacer()
            }
            .navigationBarTitle("Question \(currentIndex + 1) of \(CooperationCriteria.criteriaList.count + 1)")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
