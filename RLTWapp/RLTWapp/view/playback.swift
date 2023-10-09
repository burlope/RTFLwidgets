
import SwiftUI
struct CustomColor {
    static let lead = Color("lead")
    // Add more here...
}

struct playback: View {
    @State private var isPlaying = false
    var body: some View {
        VStack {
            Spacer()

            VStack {
                HStack {
                    SongImage(image: Image("grad"))

                    VStack(alignment: .leading){
                        Text("Flashing lights")
                            .font(.title2)
                        Text("Kanye West")
                    }
                    .padding(.leading, 20)

                    Spacer()
                }
                .padding()

                ProgressView(value: 0.5)
                    .tint(.white)
                    .background(.gray)
                    .padding(.horizontal)

                HStack {
                    Text("1:24")
                        .foregroundColor(.gray)
                        .shadow(color: .black, radius: 3)
                        .font(.system(size: 15))
                    Spacer()
                    Text("2:30")
                        .foregroundColor(.gray)
                        .shadow(color: .black, radius: 3)
                        .font(.system(size: 15))
                }
                .padding(.horizontal)

                HStack(spacing: 40) {
                    Image(systemName: "backward.fill")
                        .font(.system(size: 40))
                    /*Image(systemName: "pause.fill")
                        .tint(.gray)
                        .font(.system(size: 50))*/
                    Button(action: {
                                self.isPlaying.toggle()
                            }, label: {
                                Image(systemName: self.isPlaying ? "pause.fill" : "play.fill").tint(.black).font(.system(size: 50)).ignoresSafeArea()
                            })
                    
                    
                    Image(systemName: "forward.fill")
                        .font(.system(size: 40))
                }
                .padding(.bottom, 20)
            }
            .background(
                CustomColor.lead
                    .cornerRadius(10)
                    .ignoresSafeArea()
                    .overlay(alignment: .bottom) {
                        CustomColor.lead
                            .frame(height: 10)
                    }
            )
        }
    }
}

struct playback_Previews: PreviewProvider {
    static var previews: some View {
        playback()
    }
}
