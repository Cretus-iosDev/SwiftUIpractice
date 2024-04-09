import SwiftUI
import AVKit


//MARK: play movies with VideoPlayer
struct MediaView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://file-examples.com/storage/fe0e2ce82f660c1579f31b4/2017/04/file_example_MP4_480_1_5MG.mp4")!))
            .frame(height: 400)
        
        
        
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://file-examples.com/storage/fe0e2ce82f660c1579f31b4/2017/04/file_example_MP4_480_1_5MG.mp4")!)) {
            VStack {
                Text("Watermark")
                    .foregroundColor(.black)
                    .background(Color.white.opacity(0.7))
                Spacer()
            }
            .frame(width: 400, height: 300)
        }
    }
}



#Preview {
    MediaView()
}
