import SwiftUI

struct tgView4: View {
    /*
     How to make two gestures
     recognize at the same time using
     simultaneousGesture()
     */
    var body: some View {
        VStack {
            Text("simultaneousGesture")
                .font(.title)
                 Circle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                       print("Circle tapped")
                    }
              }
        .simultaneousGesture(
                 TapGesture()
                    .onEnded { _ in
                        print("VStack tapped")
                    }
                        )
        }
          
        }
#Preview {
    tgView4()
}
