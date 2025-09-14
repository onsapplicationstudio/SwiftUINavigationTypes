//
//  DetailView.swift
//  ONSNavigating
//
//  Created by ONS on 14/09/25.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    var text: String
    var body: some View {
        VStack {
            Spacer()
            Text(text)
                .font(.largeTitle)
            Spacer()
            Button("Close") {
                dismiss()
            }
        }
    }
}
