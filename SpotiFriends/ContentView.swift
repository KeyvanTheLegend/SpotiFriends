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
                .padding([.leading,.trailing],32)
                .padding(.bottom, 16)
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
                .padding([.leading,.trailing],32)
                .textFieldStyle(RoundedBorderTextFieldStyle())
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
                .padding(.bottom, 32)
            Button(action: {
                
            }, label: {
                Text("Login")
            })
            .padding(EdgeInsets(top: 12, leading: 64, bottom: 12, trailing: 64))
            .background(Color.green)
            .foregroundColor(.black)
            .cornerRadius(8)
            .clipped()
            Spacer()
            HStack(alignment: .center, spacing: 8, content: {
                Text("Don't have an account ?")
                    .foregroundColor(.white)
                Button(action: {
                    
                }, label: {
                    Text("Signup")
                        .foregroundColor(.green)
                        .padding(3)
                })
            })
            
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
