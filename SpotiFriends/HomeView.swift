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
            VStack(alignment: .center, spacing: 10, content: {
                Text("Test")
                Text("Test")
                Text("Test")
                Text("Test")
                
            })
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color.GradientBackground)
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
