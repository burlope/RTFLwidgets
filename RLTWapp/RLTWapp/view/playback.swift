//
//  playback.swift
//  RLTWapp
//
//  Created by Kadam Dai on 29/09/23.
//

import SwiftUI

struct playback: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15).fill(.gray).frame(width: 393, height: 140).offset(y: 400)
            SongImage(image: Image("SongImge")).offset(y: 270)
            
        }
        
    }
}

struct playback_Previews: PreviewProvider {
    static var previews: some View {
        playback()
    }
}
