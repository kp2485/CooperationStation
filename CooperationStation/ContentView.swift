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

                HStack {
                    Button(action: {
                        if currentIndex > 0 {
                            currentIndex -= 1
                            updateRatingAndResponse()
                        }
                    }, label: {
                        Text("Previous")
                    })
                    .padding()

                    Button(action: {
                        if currentIndex < CooperationCriteria.criteriaList.count {
                            responseStore.criteriaRatingsAndResponses[CooperationCriteria.criteriaList[currentIndex]] = (rating: rating, response: response.isEmpty ? nil : response)
                            currentIndex += 1
                            updateRatingAndResponse()
                        }
                    }, label: {
                        Text("Next")
                    })
                    .padding()
                }
                
                Spacer()
            }
            .navigationBarTitle("Question \(currentIndex + 1) of \(CooperationCriteria.criteriaList.count + 1)")
            .padding()
        }
    }

    private func updateRatingAndResponse() {
        let criteria = CooperationCriteria.criteriaList[currentIndex]
        if let storedResponse = responseStore.criteriaRatingsAndResponses[criteria] {
            rating = storedResponse.rating
            response = storedResponse.response ?? ""
        } else {
            rating = 5
            response = ""
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
