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
            HStack(alignment: .center, spacing: 24, content: {
                    Spacer()
                    TextField("", text : $username)
                        .placeholder(when: username.isEmpty ,alignment: .center, placeholder: {
                            Text("Username")
                                .foregroundColor(Color.white)
                        })
                        .padding([.leading,.trailing],32)
                        .padding([.bottom,.top], 12)
                        .foregroundColor(.white)
                        .background(Color.LightGray)
                        .cornerRadius(8)
                        .accentColor(.green)
                        .font(
                            .system(
                                size: 16,
                                weight: .regular,
                                design: .monospaced
                            )
                        )
                        .multilineTextAlignment(.center)
                Spacer()
            })
            
            HStack(alignment: .center, spacing: 24, content: {
                    Spacer()
                SecureField("", text : $password)

                    .placeholder(when: password.isEmpty ,alignment: .center, placeholder: {
                        Text("Password")
                            .foregroundColor(Color.white)
                    })
                    .foregroundColor(.white)
                    .accentColor(.green)
                    .padding([.leading,.trailing],32)
                    .padding([.bottom,.top], 12)
                    .background(Color.LightGray)

                    .cornerRadius(8)
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
                    .padding(.top, 12)

                Spacer()
            })
            

            
            Button(action: {
                
            }, label: {
                Text("Login")
                    .fontWeight(.medium)
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
            
            
        }.background(RadialGradient(gradient: Gradient(colors: [Color.BackgroundColor.opacity(0.93), Color.BackgroundColor]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 1, endRadius: 500))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
