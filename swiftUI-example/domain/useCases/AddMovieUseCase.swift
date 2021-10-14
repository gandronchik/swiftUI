//
//  AddMovieUseCase.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 12.10.2021.
//

import Foundation

struct AddMovieUseCaseRequestValue {
    let movie: Movie
}

protocol AddMovieUseCase {
    func execute(requestValue: AddMovieUseCaseRequestValue, completion: @escaping () -> Void)
}

final class DefaultAddMovieUseCase: AddMovieUseCase {
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo) {
        self.moviesRepo = moviesRepo
    }
    
    func execute(requestValue: AddMovieUseCaseRequestValue, completion: @escaping () -> Void) {
        let movie = Movie(name: requestValue.movie.name, date: requestValue.movie.date, imageName: requestValue.movie.imageName ?? "noImage")
        moviesRepo.createMovie(movie: movie)
        completion()
    }
}
