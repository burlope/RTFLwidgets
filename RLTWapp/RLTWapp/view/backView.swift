//
//  backView.swift
//  RLTWapp
//
//  Created by Kadam Dai on 30/09/23.
//

import SwiftUI
struct xustomColor {
    static let lead = Color("lead")
    static let up_grad = Color("upGrad")
    static let low_grad = Color("lowGrad")
    // Add more here...
}
struct backView: View {
    //var soName: mainSupport
    @EnvironmentObject var modelData: ModelData
    static var SONGS=ModelData().songs
    
    var body: some View {
        
            ZStack{
                //xustomColor.lead.ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [xustomColor.up_grad, xustomColor.low_grad]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                
                HStack {
                    
                    VStack{
                        HStack {
                        ProfilePic(image: Image("proPic"))
                        
                            Text("Suniya").font(.largeTitle).padding(.leading)
                        }.padding()
                        Spacer()
                        List(modelData.songs){songs in
                            
                                
                            SongRows(soData: songs)
                        

                        }.padding(.bottom,280).listRowBackground(xustomColor.up_grad).scrollContentBackground(.hidden).navigationTitle("Recently Played")
                    }.padding(.horizontal).padding(.top,50)
                    Spacer()
                    
                }
            }.frame(height: 870).padding(.top,30).ignoresSafeArea()
            
        
        
    }
}

struct backView_Previews: PreviewProvider {
    static var previews: some View {
        backView().environmentObject(ModelData())
    }
}
