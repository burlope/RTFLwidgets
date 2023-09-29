//
//  lowerElement.swift
//  RLTWapp
//
//  Created by Kadam Dai on 29/09/23.
//

import SwiftUI

struct lowerElement: View {
    var body: some View {
        ZStack{
            playback().ignoresSafeArea(edges: .bottom)
            SongImage(image: Image("grad")).offset(x: -120, y: 350)
        }
    }
}

struct lowerElement_Previews: PreviewProvider {
    static var previews: some View {
        lowerElement()
    }
}
