//
//  ResponseView.swift
//  CooperationStation
//
//  Created by Kyle Peterson on 9/12/23.
//

import SwiftUI

struct ResponseView: View {
    @Binding var response: String

    var body: some View {
        TextField("Thoughts...", text: $response)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}
