import SwiftUI

struct ImageView: View {
    var body: some View {
        // MARK: adjust the way an image is fitted to its space
        ScrollView(.vertical) {
            Image("img1")
                .resizable()
                .frame(height: 200)
            Image(uiImage: UIImage(named: "img2")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                   .frame(width: 250)
            Image(systemName: "cloud.heavyrain.fill")
               .font(.largeTitle)
            
        }
        
        // MARK: render images using SF Symbols
        Image(systemName: "moon.stars.fill")
        Image(systemName: "wind.snow")
           .font(.largeTitle)
        Image(systemName: "cloud.heavyrain.fill")
           .font(.largeTitle)
           .foregroundColor(.red)
        Image(systemName: "cloud.sun.rain.fill")
           .renderingMode(.original)
           .font(.largeTitle)
           .padding()
           .background(Color.black)
           .clipShape(Circle())
        Image(systemName: "person.crop.circle.fill.badge.plus")
           .renderingMode(.original)
           .foregroundColor(.blue)
           .font(.largeTitle)
        
    }
}

#Preview {
    ImageView()
}
