//
//  PageIndicator.swift
//  Mistery Tales
//
//  Created by Team A on 15/07/21.
//

import SwiftUI

struct PageIndicator: View {
    
    var currentIndex: Int = 0
    var pagesCount: Int = 4
    var onColor: Color = .green
    var offColor: Color = .red
    var diameter: CGFloat = 10
    
    var body: some View {
        HStack{
            ForEach(0..<pagesCount){ i in
                Image(systemName: "circle.fill").resizable()
                    .foregroundColor( i == self.currentIndex ? self.onColor : self.offColor)
                    .frame(width: self.diameter, height: self.diameter)

            }
        }
    }
}

struct PageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicator()
    }
}
