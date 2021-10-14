//
//  swiftUI_exampleApp.swift
//  swiftUI-example
//
//  Created by George_Andronchik on 11.10.2021.
//

import SwiftUI

@main
struct swiftUI_exampleApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { phase in
            if phase == .background {
//                TODO:
            }
        }
    }
}
