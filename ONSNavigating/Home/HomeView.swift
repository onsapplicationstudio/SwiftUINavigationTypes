//
//  HomeView.swift
//  ONSNavigating
//
//  Created by ONS on 14/09/25.
//

import SwiftUI

struct HomeView: View {
    private let presentationStyles: [PresentationStyle] = [.pushNavigationLink,
                                                           .pushNavigationPath,
                                                          .modal,
                                                          .fullScreen,
                                                          .popup]
    @State private var path = NavigationPath()
    @State private var isModelSheetPresented: Bool = false
    @State private var showFullScreen = false
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack(path: $path) {
            List(presentationStyles,
                 id: \.self) { style in
                switch style {
                case .pushNavigationLink:
                    NavigationLink(destination: DetailView(text: style.title)) {
                        Text(style.title)
                    }
                case .pushNavigationPath:
                    HomeCellView(title: style.title,
                                 onTap: {
                        path.append(style)
                    })
                case .modal:
                    HomeCellView(title: style.title,
                                 onTap: {
                        isModelSheetPresented = true
                    })
                    .sheet(isPresented: $isModelSheetPresented) {
                        DetailView(text: style.title)
                    }
                case .fullScreen:
                    HomeCellView(title: style.title,
                                 onTap: {
                        showFullScreen = true
                    })
                    .fullScreenCover(isPresented: $showFullScreen) {
                        DetailView(text: style.title)
                    }
                case .popup:
                    HomeCellView(title: style.title,
                                 onTap: {
                        showAlert = true
                    })
                    .alert(style.title,
                           isPresented: $showAlert) {
                        Button("OK",
                               role: .cancel) {}
                    }
                }
            }
                 .navigationTitle("Navigation types")
                 .navigationBarTitleDisplayMode(.inline)
                 .navigationDestination(for: PresentationStyle.self) { selectedItem in
                     DetailView(text: selectedItem.title)
                 }
        }
    }
}

#Preview {
    HomeView()
}
