import SwiftUI

struct tgView9: View {
    //How to disable taps for a view using allowsHitTesting()
    var body: some View {
        Text(" disable taps for a view using allowsHitTesting()")
            .font(.title)
        ZStack {
            
           Button("Tap Me") {
              print("Button was tapped")
           }
           .frame(width: 100, height: 100)
           .background(Color.gray)
           Rectangle()
              .fill(Color.red.opacity(0.2))
              .frame(width: 300, height: 300)
              .clipShape(Circle())
              .allowsHitTesting(false)
        }
    }
}

#Preview {
    tgView9()
}
