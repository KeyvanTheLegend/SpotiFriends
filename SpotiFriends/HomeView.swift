//
//  HomeView.swift
//  SpotiFriends
//
//  Created by sh on 8/3/21.
//

import SwiftUI

struct HomeView : View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 0, content: {
                HeaderGroupView()
                
                VStack(alignment: .leading, spacing: nil, content: {
                    MoodeView()
                    TopPlayedSongsViewGroup()

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

struct HeaderGroupView : View {
    var body: some View{
        HStack(content: {
            Text("Today Frinds Mood")
                .padding(16)
                .foregroundColor(.white)
                .font(.title)
            
            Spacer()
        })
        .padding(.top,32)
    }
}
struct MoodeView : View {
    var body: some View {
        Image("")
            .resizable()
            .frame(width: 315, height: 150, alignment: .center)
            .background(Color.BackgroundColor.opacity(0.7))
            .cornerRadius(12)
            .aspectRatio(contentMode: .fill)
            .padding(16)
    }
}
struct TopPlayedSongsViewGroup : View{
    var body: some View{
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
    }
}
