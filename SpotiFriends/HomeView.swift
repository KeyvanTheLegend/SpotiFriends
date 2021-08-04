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
            VStack(alignment: .leading, spacing: 0, content: {
                HeaderGroupView()
                VStack(alignment: .leading, spacing: nil, content: {
                    MoodeView()
                    TopPlayedSongsViewGroup()
                })
                .background(Color.clear)
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
            .previewDevice("iPhone 8")
    }
}

struct HeaderGroupView : View {
    var body: some View{
        HStack(content: {
            Text("Friends")
                .padding(16)
                .foregroundColor(.white)
                .font(.title.weight(.bold))
            
            Spacer()
        })
        .padding(.top,64)
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
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding([.top,.bottom, .trailing],8)
                VStack (alignment: .leading, spacing: 4, content: {
                    Text("Song Name")
                        .foregroundColor(.white)
                        .font(.title3.weight(.medium))
                    Text("Singer name")
                        .font(.caption)
                        .foregroundColor(Color.captionTextColor)
                })
                
            })
            .listRowBackground(Color.cellBackgroundColor)
            HStack(content: {
                Image("spotifyicon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding([.top,.bottom, .trailing],8)
                VStack (alignment: .leading, spacing: 4, content: {
                    Text("Song Name")
                        .foregroundColor(.white)
                        .font(.title3.weight(.medium))
                    Text("Singer name")
                        .font(.caption)
                        .foregroundColor(Color.captionTextColor)
                })
                
            })
            .listRowBackground(Color.cellBackgroundColor)
            HStack(content: {
                Image("spotifyicon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding([.top,.bottom, .trailing],8)
                VStack (alignment: .leading, spacing: 4, content: {
                    Text("Song Name")
                        .foregroundColor(.white)
                        .font(.title3.weight(.medium))
                    Text("Singer name")
                        .font(.caption)
                        .foregroundColor(Color.captionTextColor)
                })
                
            })
            .listRowBackground(Color.cellBackgroundColor)
            SeeMoreButton()
                .listRowBackground(Color.cellBackgroundColor)

        }.frame(width: 350, height: 350, alignment: .top)
        .background(Color.clear)
        .listStyle(InsetGroupedListStyle())
        .cornerRadius(12)
        .onAppear(perform: {
            UITableView.appearance().contentInset.top = -35
        })
    }
}
struct SeeMoreButton : View {
    var body: some View {
        Button("See More") {
        }.frame(width: 270, height: 60, alignment: .center)
        .background(Color.green)
        .foregroundColor(.white)
        .cornerRadius(12)
        .font(.headline)
        .padding([.trailing,.top,.bottom],16)
    }
}
