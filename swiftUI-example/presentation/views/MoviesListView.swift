//
//  MoviesListView.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import SwiftUI

struct MoviesListView: View {
    @ObservedObject var moviesViewModel: MoviesViewModel
    
    var body: some View {
        List {
            ForEach(moviesViewModel.movies, id: \.id) {
                MovieRow(movie: $0)
            }
            .onDelete(perform: {
                moviesViewModel.removeMovies(indexes: $0)
            })
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView(moviesViewModel: MoviesViewModel())
    }
}
