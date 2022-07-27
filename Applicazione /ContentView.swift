//
//  ContentView.swift
//  Mistery Tales
//
//  Created by Team A on 15/07/21.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    
    @State var show = false
    private let initialLaunchKey = "isInitialLaunch"
    
    var scene: SKScene {
        let scene = SKScene(fileNamed: "Scene")
        scene?.scaleMode = .resizeFill
        return scene!
    }

    var body: some View {
        
        VStack {
            if show {
                SpriteView(scene: scene)
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Text("game")
                        Image(systemName: "gamecontroller")
                    }
            } else {
                PageViewContainer( viewControllers: Page.getAll.map({  UIHostingController(rootView: PageView(page: $0) ) }), presentSignupView: {
                    withAnimation {
                        self.show = true
                    }
                    UserDefaults.standard.set(true, forKey: self.initialLaunchKey)
                }).transition(.scale)
            }
        }.frame(maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
