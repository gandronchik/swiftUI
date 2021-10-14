//
//  GetMoviesListUseCase.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import Foundation

struct GetMoviesListUseCaseRequestValue {
    let filter: String
}

protocol GetMoviesListUseCase {
    func execute(requestValue: GetMoviesListUseCaseRequestValue, completion: @escaping ([Movie]) -> Void)
}

final class DefaultGetMoviesListUseCase: GetMoviesListUseCase {
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo) {
        self.moviesRepo = moviesRepo
    }
    
    func execute(requestValue: GetMoviesListUseCaseRequestValue, completion: @escaping ([Movie]) -> Void) {
        completion(moviesRepo.getMoviesList(filter: requestValue.filter))
    }
}
