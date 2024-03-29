//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Edmirjano Preci on 9.8.22.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

        var body: some View {
            VStack(alignment: .leading) {
                landmark.image
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(landmark.name)
                    .font(.caption)
                    .foregroundColor(.primary)
            }
            .padding(.leading, 15)
        }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
