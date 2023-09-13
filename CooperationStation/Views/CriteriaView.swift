//
//  CriteriaView.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import SwiftUI


struct CriteriaView: View {
    var criteria: CooperationCriteria
    @Binding var rating: Int
    @Binding var response: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Category: \(criteriaCategory)")
            
            Text("Criteria: \(criteriaName)")
            
            Text(criteriaDescription)

            Stepper(value: $rating, in: 1...10, label: {
                Text("Rating: \(rating)")
            })

            TextField("Thoughts...", text: $response)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
    
    private var criteriaCategory: String {
        switch criteria {
        case .objectiveMetrics(_):
            return "Objective Metrics"
        case .communication(_):
            return "Communication"
        case .rolesResponsibilities(_):
            return "Roles and Responsibilities"
        case .conflictProblemSolving(_):
            return "Conflict and Problem Solving"
        case .trustRespect(_):
            return "Trust and Respect"
        case .groupDynamics(_):
            return "Group Dynamics"
        case .feedbackEvaluation:
            return "Feedback and Evaluation"
        case .goalAlignment(_):
            return "Goal Alignment"
        case .culturalContextual(_):
            return "Cultural/Contextual"
        }
    }

    private var criteriaName: String {
        switch criteria {
        case .objectiveMetrics(let subtype):
            return subtype.rawValue
        case .communication(let subtype):
            return subtype.rawValue
        case .rolesResponsibilities(let subtype):
            return subtype.rawValue
        case .conflictProblemSolving(let subtype):
            return subtype.rawValue
        case .trustRespect(let subtype):
            return subtype.rawValue
        case .groupDynamics(let subtype):
            return subtype.rawValue
        case .feedbackEvaluation(let subtype):
            return subtype.rawValue
        case .goalAlignment(let subtype):
            return subtype.rawValue
        case .culturalContextual(let subtype):
            return subtype.rawValue
        }
    }
    
    private var criteriaDescription: String {
        switch criteria {
        case .objectiveMetrics(let subtype):
            return subtype.description
        case .communication(let subtype):
            return subtype.description
        case .rolesResponsibilities(let subtype):
            return subtype.description
        case .conflictProblemSolving(let subtype):
            return subtype.description
        case .trustRespect(let subtype):
            return subtype.description
        case .groupDynamics(let subtype):
            return subtype.description
        case .feedbackEvaluation(let subtype):
            return subtype.description
        case .goalAlignment(let subtype):
            return subtype.description
        case .culturalContextual(let subtype):
            return subtype.description
        }
    }

}

