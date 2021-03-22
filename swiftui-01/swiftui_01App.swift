//
//  swiftui_01App.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/19/21.
//

import SwiftUI

@main
struct swiftui_01App: App {
	
	@StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
