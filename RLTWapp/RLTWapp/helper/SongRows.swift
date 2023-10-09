
import SwiftUI

struct SongRows: View {
    var soData: mainSupport
    var body: some View {
        HStack {
            soData.image.resizable().frame(width: 60, height: 60)
            VStack(alignment: .leading){
                Text(soData.song)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(soData.Artist)
                    .font(.body)
                    .fontWeight(.light)
            }
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


