//
//  PageViewContainer.swift
//  Mistery Tales
//
//  Created by Team A on 15/07/21.
//

import SwiftUI

struct PageViewContainer<Page: View>  : View {
    
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    @State var buttonText = "Next"
    var presentSignupView: (()->()) = {}
    
        
    var body: some View {
       
       return VStack {
        PageViewController(controllers: viewControllers, currentPage: self.$currentPage)
            
            PageIndicator(currentIndex: self.currentPage)
            
           VStack {
                
                Button(action: {
                    if self.currentPage < self.viewControllers.count - 1{
                        self.currentPage += 1
                    } else {
                        self.presentSignupView()
                    }
                }) {
                    HStack {
                        Text(currentPage == viewControllers.count - 1 ? "Get started" : "Next" )
                            .bold()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .accentColor(Color.red) // bottone
                            .background(Color.blue)// bottone
                            .cornerRadius(10)
                    }.padding()
                }
            }.padding(.vertical)
        }.background(Color.green)//colore di sfondo del bottone nell on boarding
    }
}

struct PageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        PageViewContainer( viewControllers: Page.getAll.map({  UIHostingController(rootView: PageView(page: $0) )  }))
    }
}
