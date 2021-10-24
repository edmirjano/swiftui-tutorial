//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Edmirjano on 24.10.21.
//

import SwiftUI

struct LandmarkDetail: View {
    var land: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: land.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImage(image: land.image)
                .offset(y: -80)
                .padding(.bottom, -80)
            VStack(alignment: .leading) {
                Text(land.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                .foregroundColor(Color(hue: 1.0, saturation: 0.568, brightness: 0.195))
                HStack {
                    Text(land.park)
                        .font(.title2)
                    Spacer()
                    Text(land.state)
                        .font(.title2)
                }
                Divider()
                Text(land.description)
                    .font(.body)
            }
            .padding()
            
        }
        .navigationTitle(land.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(land: landmarks[0])
    }
}
