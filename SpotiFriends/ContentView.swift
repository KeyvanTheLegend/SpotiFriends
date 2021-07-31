//
//  ContentView.swift
//  SpotiFriends
//
//  Created by sh on 7/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image("spotifyicon")
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
                .clipped()
                .aspectRatio(contentMode: .fit)
            
            Text("Spotify Friends")
                .padding(1)
                .foregroundColor(.green)
                .font(.system(size: 16, weight: .bold, design: .rounded))
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
