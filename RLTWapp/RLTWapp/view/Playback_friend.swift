//
//  Playback_friend.swift
//  RLTWapp
//
//  Created by Kadam Dai on 08/10/23.
//

import SwiftUI

struct Playback_friend: View {
    //var Sodata: mainSupport
    
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                Text(/*Sodata.song*/"Wake me up when Semtember ends").font(.title3).fontWeight(.bold)
                Text(/*Sodata.Artist*/"Green Day").fontWeight(.light)
            }
            
                        Image(systemName: "waveform").font(.system(size: 40))
                    
                    .font(.largeTitle)
            
            Spacer()
        }.padding()
    }
}

struct Playback_friend_Previews: PreviewProvider {
    //static var Songs=ModelData().songs
    static var previews: some View {
        Playback_friend(/*Sodata: Songs[0]*/)
    }
}
