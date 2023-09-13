//
//  ResponseStore.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import Foundation

class ResponseStore: ObservableObject {
    
    @Published var criteriaRatingsAndResponses: [CooperationCriteria: (rating: Int, response: String?)] = [:]
    
    // Function to print criteria, descriptions, and ratings
    func printCriteriaRatingsAndResponses() {
        for (criteria, data) in criteriaRatingsAndResponses {
            print("Assessment Criteria: \(criteria)")
            print("Rating: \(data.rating)")
            if let response = data.response {
                print("Response: \(response)")
            }
            print()
        }
    }
}
