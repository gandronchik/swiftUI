//
//  Movie.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import Foundation

struct Movie: Identifiable, Equatable {
    let id: String = UUID().uuidString
    let name: String
    let date: Date
    let imageName: String?
}
