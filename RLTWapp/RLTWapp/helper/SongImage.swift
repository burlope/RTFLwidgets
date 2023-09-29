//
//  SongImage.swift
//  RLTWapp
//
//  Created by Kadam Dai on 29/09/23.
//

import SwiftUI

struct SongImage: View {
    var image: Image
    var body: some View {
        image.resizable().frame(width: 100, height: 100).clipShape(RoundedRectangle(cornerRadius: 30))    }
}

struct SongImage_Previews: PreviewProvider {
    static var previews: some View {
        SongImage(image: Image("SongImge"))
    }
}
