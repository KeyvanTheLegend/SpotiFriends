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
                MoodeView()
                TopPlayedSongsViewGroup()
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
            .previewDevice("iPhone 12 Pro")
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
        Image("mood2")
            .resizable()
            .frame(width: 350, height: 150, alignment: .center)
            .background(Color.BackgroundColor.opacity(0.7))
            .cornerRadius(12)
            .aspectRatio(contentMode: .fill)
            .padding(16)
    }
}
struct TopPlayedSongsViewGroup : View{
    var body: some View{
        Text("Top Played Songs")
            .padding([.leading,.trailing,.bottom],16)
            .foregroundColor(.white)
            .font(.title3)
        List {
            HStack(content: {
                Image("music1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .center)
                    .cornerRadius(12)
                    .padding([.trailing],16)
                    .padding([.bottom,.top],8)
                    .clipped()

                VStack (alignment: .leading, spacing: 6, content: {
                    Text("Song Name")
                        .foregroundColor(.white)
                        .font(.title3.weight(.medium))
                    Text("Singer name")
                        .font(.caption)
                        .foregroundColor(Color.captionTextColor)
                })
                
            })
            .listRowBackground(Color.cellBackgroundColor)
            .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 8))

            HStack(content: {
                Image("music2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .center)
                    .cornerRadius(12)
                    .padding([.trailing],16)
                    .padding([.bottom,.top],8)
                    .clipped()

                VStack (alignment: .leading, spacing: 6, content: {
                    Text("Song Name")
                        .foregroundColor(.white)
                        .font(.title3.weight(.medium))
                    Text("Singer name")
                        .font(.caption)
                        .foregroundColor(Color.captionTextColor)
                })
                
            })
            .listRowBackground(Color.cellBackgroundColor)
            .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 8))

            HStack(content: {
                Image("music3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .center)
                    .cornerRadius(12)
                    .padding([.trailing],16)
                    .padding([.bottom,.top],8)
                    .clipped()

                VStack (alignment: .leading, spacing: 6, content: {
                    Text("Song Name")
                        .foregroundColor(.white)
                        .font(.title3.weight(.medium))
                    Text("Singer name")
                        .font(.caption)
                        .foregroundColor(Color.captionTextColor)
                })
                
            })
            .listRowBackground(Color.cellBackgroundColor)
            .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 8))

            SeeMoreButton()
                .listRowBackground(Color.cellBackgroundColor)
            
        }.frame(width: 385, height: 390, alignment: .top)
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
        }.frame(width: 300, height: 60, alignment: .center)
        .background(Color.green)
        .foregroundColor(.white)
        .cornerRadius(12)
        .font(.headline)
        .padding([.trailing,.top,.bottom],16)
    }
}
