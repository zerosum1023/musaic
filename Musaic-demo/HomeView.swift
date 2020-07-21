//
//  ContentView.swift
//  Musaic-demo
//
//  Created by Alex Borisov on 2020-07-20.
//  Copyright © 2020 Alex Borisov. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    init() {
        // this is not the same as manipulating the proxy directly
        let appearance = UINavigationBarAppearance()
        
        // this overrides everything you have set up earlier.
        appearance.configureWithTransparentBackground()
        
        // this only applies to big titles
        appearance.largeTitleTextAttributes = [
            .font : UIFont.systemFont(ofSize: 20),
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        // this only applies to small titles
        appearance.titleTextAttributes = [
            .font : UIFont.systemFont(ofSize: 20),
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        
        //In the following two lines you make sure that you apply the style for good
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        // This property is not present on the UINavigationBarAppearance
        // object for some reason and you have to leave it til the end
        UINavigationBar.appearance().tintColor = .white
        
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Rectangle()
                    .fill()
                    .foregroundColor(Color(red: 18/255, green: 18/255, blue: 18/255))
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .trailing) {
                    PlayerQueue().padding(.top, 0)
                    Spacer()
                    MusicQueue()
                    Spacer()
                    NowPlaying()
//                    Spacer()
                    PlayerControls(status: "init", playing: false)
                    Spacer()
                }
                .navigationBarItems(leading:
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "square.grid.2x2.fill")
                                .font(.largeTitle)
                        }.foregroundColor(.white)
                    }, trailing:
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "person.badge.plus.fill")
                                .font(.largeTitle)
                        }.foregroundColor(.white)
                })
                    .navigationBarTitle(Text("Game name"), displayMode: .inline)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
