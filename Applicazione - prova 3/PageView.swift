//
//  PageView.swift
//  Mistery Tales
//
//  Created by Team A on 15/07/21.
//

import SwiftUI

struct PageView: View {
    
    var page = Page.getAll.first!
    
    var body: some View {
            
        VStack {
                
                Image(page.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(20)
                    .shadow(radius: 10)
                VStack{
                    Text(page.heading)
                        .font(.title).bold().layoutPriority(1).multilineTextAlignment(.center)
                    Text(page.subSubheading)
                        .multilineTextAlignment(.center)
                        .padding(15)
                }.padding()
            }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
