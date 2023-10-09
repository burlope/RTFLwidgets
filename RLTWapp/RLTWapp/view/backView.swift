
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
                            VStack{
                                
                                ProfilePic(image: Image("proPic")).padding(.leading)
                                
                                
                                
                                
                                Text("Suniya").font(.largeTitle).lineLimit(nil).padding(.leading)
                            }
                            
                            Spacer()
                        }.padding(.leading, 40.0).padding(.bottom, 20.0).background(
                            CustomColor.lead
                                .cornerRadius(10)
                                .ignoresSafeArea()
                                .overlay(alignment: .top) {
                                    CustomColor.lead
                                        .frame(height: 10)
                                }
                        ).padding([.top, .leading, .trailing], -40)
                            
                        
                        Spacer()
                        
                        List(modelData.songs){songs in
                            
                                
                            SongRows(soData: songs).foregroundColor(.black).listRowBackground(xustomColor.lead)
                        

                        }.padding(.bottom,230).listRowBackground(xustomColor.up_grad).scrollContentBackground(.hidden)
                    }.padding(.horizontal).padding(.top,50)
                    Spacer()
                    
                }
            }.frame(height: 820).padding(.top,30).ignoresSafeArea()
            
        
        
    }
}

struct backView_Previews: PreviewProvider {
    static var Songs=ModelData().songs
    static var previews: some View {
        backView(/*soName: Songs[0]*/).environmentObject(ModelData())
    }
}
