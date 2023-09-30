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
                        List{
                            NavigationLink{
                                Text("something")
                                
                            }label: {
                                Text("something")
                            }
                        

                        }.padding(.bottom,280).scrollContentBackground(.hidden).navigationTitle("Recently Played")
                    }.padding(.horizontal).padding(.top,50)
                    Spacer()
                    
                }
            }.frame(height: 870).padding(.top,30).ignoresSafeArea()
            
        
        
    }
}

struct backView_Previews: PreviewProvider {
    static var previews: some View {
        backView()
    }
}
