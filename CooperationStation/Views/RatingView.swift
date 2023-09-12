//
//  RatingView.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int

    var body: some View {
        Stepper(value: $rating, in: 1...10, label: {
            Text("Rating: \(rating)")
        })
    }
}

