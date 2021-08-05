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
        
        let appearence = UINavigationBarAppearance()
        appearence.configureWithTransparentBackground()
        appearence.backgroundEffect = UIBlurEffect(style: .dark)
        appearence.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.09803921569, blue: 0.09803921569, alpha: 1).withAlphaComponent(0.7)
        appearence.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearence.largeTitleTextAttributes = [.foregroundColor:UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearence
        UINavigationBar.appearance().scrollEdgeAppearance = appearence
        UINavigationBar.appearance().compactAppearance = appearence
        UINavigationBar.appearance().isTranslucent = true
    }
    
    var body: some View {
        NavigationView {
                
                ScrollView(.vertical){
                    GeometryReader { geometry in

                    VStack(alignment: .leading, spacing: 0, content: {
                        MoodeView()
                            .frame(width: geometry.size.width,
                                   height: geometry.size.width / 2.2,
                                   alignment: .center)
                        TopPlayedSongsViewGroup()
                            .frame(width: geometry.size.width,
                                   alignment: .center)
                        Spacer()
                        
                        ForEach(0..<1) { i in
                            
                            Text("\(i)")
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .hidden()
                        }
                    })
                    }
                    
                }.fixFlickering(configurator: { scrollview in
                    scrollview.background(Color.GradientBackground)
                })
                .navigationTitle("Friends")

            }
        
        
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
        GeometryReader { geometry in
            VStack (alignment : .center) {
                Image("mood2")
                    .resizable()
                    .frame(width: abs(geometry.size.width - 32), height: abs(geometry.size.height - 32), alignment: .center)
                    .background(Color.BackgroundColor.opacity(0.7))
                    .cornerRadius(12)
                    .aspectRatio(contentMode: .fill)
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            
        }
    }
}
struct TopPlayedSongsViewGroup : View{
    var body: some View{
        GeometryReader { geometry in
            VStack (alignment : .leading) {
                Text("Top Played Songs")
                    .padding([.horizontal],16)
                    .padding([.vertical],8)

                    .foregroundColor(.white)
                    .font(.title3)
                List {
                    HStack(content: {
                        Image("music1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70, alignment: .center)
                            .cornerRadius(12)
                            .padding([.trailing],16)
                            .padding([.bottom,.top],16)
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
                            .frame(width: 70, height: 70, alignment: .center)
                            .cornerRadius(12)
                            .padding([.trailing],16)
                            .padding([.bottom,.top],16)
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
                            .frame(width: 70, height: 70, alignment: .center)
                            .cornerRadius(12)
                            .padding([.trailing],16)
                            .padding([.bottom,.top],16)
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
                        .frame(height: 64 + 16)
                    
                }.frame(width: geometry.size.width, height: 500, alignment: .top)
                .background(Color.clear)
                .listStyle(InsetGroupedListStyle())
                .cornerRadius(12)
                .onAppear(perform: {
                    UITableView.appearance().contentInset.top = -35
                })
                .hasScrollEnabled(false)
            }
        }
    }
}
struct SeeMoreButton : View {
    var body: some View {
        GeometryReader { geometry in
            VStack (alignment: .center) {
                Button("See More") {
                }.frame(width: geometry.size.width - 32, height: 60)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(12)
                .font(.headline)
            }.frame(width: geometry.size.width, height: 64 + 16)
        }
    }
    
}
extension View {
    
    func hasScrollEnabled(_ value: Bool) -> some View {
        self.onAppear {
            UITableView.appearance().isScrollEnabled = value
        }
    }
}
