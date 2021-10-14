//
//  DeleteMovieUseCase.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import Foundation

struct DeleteMovieUseCaseRequestValue {
    let movie: Movie
}

protocol DeleteMovieUseCase {
    func execute(requestValue: DeleteMovieUseCaseRequestValue, completion: @escaping () -> Void)
}

final class DefaultDeleteMovieUseCase: DeleteMovieUseCase {
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo) {
        self.moviesRepo = moviesRepo
    }
    
    func execute(requestValue: DeleteMovieUseCaseRequestValue, completion: @escaping () -> Void) {
        moviesRepo.deleteMovie(movie: requestValue.movie)
        completion()
    }
}
