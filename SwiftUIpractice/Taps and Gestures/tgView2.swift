import SwiftUI

struct tgView2: View {
    //MARK: How to read tap and double-tap gestures
    var body: some View {
        Text("Tap me!")
            .onTapGesture {
                print("Tapped!")
            }
        Image("img4")
           .onTapGesture(count: 2) {
              print("Double tapped!")
           }
    }
}

#Preview {
    tgView2()
}
