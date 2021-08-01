//
//  ContentView.swift
//  SpotiFriends
//
//  Created by sh on 7/31/21.
//

import SwiftUI

struct ContentView: View {
    @State var username :String = ""
    @State var password :String = ""

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
            
            TextField("Username", text : $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .foregroundColor(.black)
                .accentColor(.green)
                .font(
                    .system(
                        size: 16,
                        weight: .regular,
                        design: .monospaced
                    )
                )
                .multilineTextAlignment(.center)
            SecureField("Password", text : $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading,.trailing],16)
                .foregroundColor(.black)
                .accentColor(.green)
                .font(
                    .system(
                        size: 16,
                        weight: .regular,
                        design: .monospaced
                    )
                )
                .multilineTextAlignment(.center)
                .textContentType(.password)
            
            Spacer()
            Spacer()
            
        }.background(Color.BackgroundColor)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
