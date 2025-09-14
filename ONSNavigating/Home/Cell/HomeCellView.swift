//
//  HomeCellView.swift
//  ONSNavigating
//
//  Created by ONS on 14/09/25.
//

import SwiftUI

struct HomeCellView: View {
    var title: String
    var onTap: () -> Void
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Button {
                onTap()
            } label: {
                Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
            }
        }
        
    }
}

#Preview {
    HomeCellView(title: "Hello World") {}
}
