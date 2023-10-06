//
//  SongRows.swift
//  RLTWapp
//
//  Created by Kadam Dai on 05/10/23.
//

import SwiftUI

struct SongRows: View {
    var soData: mainSupport
    var body: some View {
        HStack {
            
            Text(soData.song)
            Spacer()
            
        }
        
    }
    }


struct SongRows_Previews: PreviewProvider {
    
    static var Songs=ModelData().songs
    static var previews: some View {
        SongRows(soData: Songs[0])
        SongRows(soData: Songs[1])
    }
}


