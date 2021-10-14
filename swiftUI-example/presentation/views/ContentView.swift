//
//  ContentView.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MoviesViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                MoviesSearchView(viewModel: viewModel)
                MoviesListView(moviesViewModel: viewModel)
            }
            .modifier(ContentModifier(viewModel: viewModel))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
