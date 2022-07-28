//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Edmirjano on 24.10.21.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var land: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == land.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: land.locationCoordinate)
                .frame(height: 400)
                .ignoresSafeArea(edges: .top)
            CircleImage(image: land.image)
                .offset(y: -125)
                .padding(.bottom, -80)
            VStack(alignment: .leading) {
                HStack {
                    Text(land.name)
                        .font(.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.568, brightness: 0.195))
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
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
        LandmarkDetail(land: ModelData().landmarks[0])
    }
}
