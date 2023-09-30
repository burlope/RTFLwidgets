//
//  ContentView.swift
//  RLTWapp
//
//  Created by Kadam Dai on 29/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            backView()
            playback()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
