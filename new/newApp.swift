//
//  newApp.swift
//  new
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

@main
struct newApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(genderNeutral: false, wheelChairAccessible:  false,babyChangingStations: false)
        }
    }
}
