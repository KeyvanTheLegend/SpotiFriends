//
//  HomeView.swift
//  SpotiFriends
//
//  Created by sh on 8/3/21.
//

import SwiftUI

struct HomeView : View {
    
    init(){
        UITableView.appearance().contentInset.top = -35
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView{
            /// main container
            VStack(alignment: .leading, spacing: 0, content: {
                /// first item
                HStack(content: {
                    Text("Today Frinds Mood")
                        .padding(16)
                        .foregroundColor(.white)
                        .font(.title)
                    
                    Spacer()
                })
                .padding(.top,32)
                
                VStack(alignment: .leading, spacing: nil, content: {
                    Image("")
                        .resizable()
                        .frame(width: 315, height: 150, alignment: .center)
                        .background(Color.BackgroundColor.opacity(0.7))
                        .cornerRadius(12)
                        .aspectRatio(contentMode: .fill)
                        .padding(16)
                    Text("Top Played Songs")
                        .padding([.leading,.trailing],16)
                        .foregroundColor(.white)
                        .font(.title3)
                    List {
                        HStack(content: {
                            Image("spotifyicon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundColor(Color.red)
                                .frame(width: 50, height: 50, alignment: .center)
                            VStack (alignment: .leading, spacing: 4, content: {
                                
                                Text("Song Name")
                                    .font(.title3)
                                Text("Singer name")
                                    .font(.caption)
                            })
                            
                        })
                        HStack(content: {
                            Image("spotifyicon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundColor(Color.red)
                                .frame(width: 50, height: 50, alignment: .center)
                            VStack (alignment: .leading, spacing: 4, content: {
                                
                                Text("Song Name")
                                    .font(.title3)
                                Text("Singer name")
                                    .font(.caption)
                            })
                            
                        })
                        HStack(content: {
                            Image("spotifyicon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundColor(Color.red)
                                .frame(width: 50, height: 50, alignment: .center)
                            VStack (alignment: .leading, spacing: 4, content: {
                                
                                Text("Song Name")
                                    .font(.title3)
                                Text("Singer name")
                                    .font(.caption)
                            })
                            
                        })
                        
                    }.frame(width: 350, height: nil, alignment: .top)
                    .background(Color.clear)
                    .onAppear(perform: {
                        UITableView.appearance().contentInset.top = -35
                    })
                    
                    Button("See More") {
                        
                    }.frame(width: 320, height: 60, alignment: .center)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .font(.headline)
                    .padding([.leading,.trailing,.bottom],16)
                    
                    
                })
                .background(Color.LightGray)
                .cornerRadius(12)
                .padding([.leading,.trailing],16)
                .clipped()
                Spacer()
            })
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color.GradientBackground)
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)

        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
