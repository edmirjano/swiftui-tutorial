//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Edmirjano on 24.10.21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            HikeView(hike: ModelData().hikes[0])
                .padding()
//            Badge()
//            LandmarkList()
//                .environmentObject(modelData)
        }
    }
}
