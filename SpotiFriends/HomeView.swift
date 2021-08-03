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
