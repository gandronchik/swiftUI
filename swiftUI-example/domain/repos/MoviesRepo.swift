//
//  MoviesRepo.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import Foundation

protocol MoviesRepo {
    func getMoviesList(filter: String) -> [Movie]
    func createMovie(movie: Movie)
    func deleteMovie(movie: Movie)
}
