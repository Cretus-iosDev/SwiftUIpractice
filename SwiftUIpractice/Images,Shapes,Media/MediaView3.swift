import SwiftUI


//MARK: load a remote image from a URL
struct MediaView3: View {
    var body: some View {
        ScrollView(.vertical) {
            AsyncImage(url: URL(string: "https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/08/avengers-endgame-trivia-118-when-robert-downey-jr-called-tony-stark-an-ahole-001.jpg" ),scale: 2) {
                image in
                
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 128, height: 128)
            
            
            //MARK: get custom colors and transparency with SF Symbols
            Image(systemName: "theatermasks")
               .symbolRenderingMode(.hierarchical)
               .font(.system(size: 144))
            
            Image(systemName: "theatermasks")
               .symbolRenderingMode(.hierarchical)
               .foregroundColor(.blue)
               .font(.system(size: 144))
            
            Image(systemName: "shareplay")
               .symbolRenderingMode(.palette)
               .foregroundStyle(.blue, .black)
               .font(.system(size: 144))
            
            Image(systemName: "person.3.sequence.fill")
               .symbolRenderingMode(.palette)
               .foregroundStyle(.blue, .green, .red)
               .font(.system(size: 144))
            
            Image(systemName: "person.3.sequence.fill")
               .symbolRenderingMode(.palette)
               .foregroundStyle(
                .linearGradient(
                    colors: [.red, .black],
                    startPoint: .top,
                    endPoint: .bottomTrailing
                ),
                .linearGradient(
                    colors: [.green, .black],
                    startPoint: .top,
                    endPoint: .bottomTrailing
                ),
                .linearGradient(
                    colors: [.blue, .black],
                    startPoint: .top,
                    endPoint: .bottomTrailing
                )
               )
               .font(.system(size: 144))
        }
        
        .padding()
    }
}

#Preview {
    MediaView3()
}



