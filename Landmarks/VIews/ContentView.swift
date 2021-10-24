//
//  ContentView.swift
//  Landmarks
//
//  Created by Edmirjano on 24.10.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("PandApp")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                .foregroundColor(Color(hue: 1.0, saturation: 0.568, brightness: 0.195))
                HStack {
                    Text("Like Pandas?")
                        .font(.title2)
                    Spacer()
                    Text("Meet Jonathan")
                        .font(.title2)
                }
                Divider()
                Text("This is the reares panda found on earth")
                    .font(.body)
                Text("The only place you can find it is near 'pallati me shigjeta'.")
                    .font(.body)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
