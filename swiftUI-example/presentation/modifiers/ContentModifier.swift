//
//  ContentModifier.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import Foundation
import SwiftUI

struct ContentModifier: ViewModifier {
    @ObservedObject var viewModel: MoviesViewModel
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitle("Movies")
            .navigationBarItems(trailing: Button(
                    action: {
                        viewModel.addMovieScreenPresented.toggle()
                    },
                    label: {
                        Image(systemName: "plus").imageScale(.large)
                    })
            )
            .fullScreenCover(isPresented: $viewModel.addMovieScreenPresented, content: {
                CreateMovieView(viewModel: viewModel)
            })
    }
    
}
