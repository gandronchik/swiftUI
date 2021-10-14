//
//  MoviesSearchView.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 13.10.2021.
//

import SwiftUI

struct MoviesSearchView: View {
    @ObservedObject var viewModel: MoviesViewModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.secondary.opacity(0.5))
                .cornerRadius(9)
            HStack {
                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                TextField("Search...", text: $viewModel.searched)
                    .keyboardType(.webSearch)
                    .foregroundColor(.white)
                
                if viewModel.searched != "" {
                    Button(action: {
                        viewModel.searched = ""
                    }) {
                        Image(systemName: "xmark.circle.fill").foregroundColor(Color(.gray))
                    }
                }
            }
            .padding(.trailing, 8)
            .padding(.leading, 12)
        }.frame(height: 38)
        .padding(.trailing, 16)
        .padding(.leading, 16)
        .animation(.easeInOut(duration: 0.3))
    }
}

struct MoviesSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesSearchView(viewModel: MoviesViewModel())
    }
}
