//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Edmirjano on 24.10.21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { land in
                NavigationLink(destination: LandmarkDetail(land: land)){
                        LandmarkRow(landmark: land)
                }
            }
        .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
