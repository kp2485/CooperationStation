//
//  ResponseStore.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import Foundation

class ResponseStore: ObservableObject {
    
    var criteriaRatingsAndResponses: [CooperationCriteria: (rating: Int, response: String?)] = [
        .objectiveMetrics(.taskCompletion): (5, nil),
        .objectiveMetrics(.attendanceParticipation): (4, "Attendance has been good."),
        .objectiveMetrics(.conflictResolution): (3, "Some conflicts were resolved."),
        .communication(.openHonestCommunication): (5, "Great communication within the group."),
        .communication(.activeListening): (4, nil),
        .rolesResponsibilities(.clearRoleAllocation): (4, "Roles are well-defined."),
        .rolesResponsibilities(.accountability): (3, "Some members need to be more accountable.")
        // Add other criteria, ratings, and responses here...
    ]
    
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
