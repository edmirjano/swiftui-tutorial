//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Edmirjano Preci on 28.7.22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .font(.title3)
                .foregroundColor(isSet ? .yellow : .gray)
                .padding(.bottom)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
