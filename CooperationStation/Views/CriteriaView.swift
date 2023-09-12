//
//  CriteriaView.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import SwiftUI


struct CriteriaView: View {
    var criteria: CooperationCriteria

    @State private var rating: Int = 5
    @State private var response: String = ""

    var body: some View {
        VStack {
            Text(criteriaName)
            
            Text(criteriaDescription)

            RatingView(rating: $rating)

            ResponseView(response: $response)
        }
        .padding()
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

