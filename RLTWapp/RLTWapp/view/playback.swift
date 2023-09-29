//
//  playback.swift
//  RLTWapp
//
//  Created by Kadam Dai on 29/09/23.
//

import SwiftUI
struct CustomColor {
    static let lead = Color("lead")
    // Add more here...
}

struct playback: View {
    
    var body: some View {
        
        ZStack {
           
            RoundedRectangle(cornerRadius: 15).fill(CustomColor.lead).frame(width: 393, height: 350).offset(x: 0,y: 350)
                            
            ProgressView(value: 0.5).tint(.white).background(.gray).frame(width: 340).offset(y: 310)

                SongImage(image: Image("grad")).offset(x: -140, y: 240)
            VStack(alignment: .leading){
                Text("Flashing lights").font(.title2).offset(y:225)
                Text("Kanye West").offset(y:230)
            }
            VStack{
                Text("1:24").foregroundColor(.gray).shadow(color: .black, radius: 3).font(.system(size: 15)).offset(x:-152,y:335)
                Text("2:30").foregroundColor(.gray).shadow(color: .black, radius: 3).font(.system(size: 15)).offset(x:150,y:315)
            }
            Image(systemName: "pause.fill").tint(.gray)
                    .font(.system(size: 50)).offset(x:0,y:360)
                Image(systemName: "forward.fill").font(.system(size: 40)).offset(x:100,y: 360)
                Image(systemName: "backward.fill").font(.system(size: 40)).offset(x:-100,y: 360)
                            
            
                    
            
        }
        
        }
        
    }


struct playback_Previews: PreviewProvider {
    static var previews: some View {
        playback()
    }
}
