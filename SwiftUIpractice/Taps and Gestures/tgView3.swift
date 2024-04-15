import SwiftUI

struct tgView3: View {
    /*
     MARK: How to force one gesture to
     recognize before another using
     highPriorityGesture()
     */
    var body: some View {
        
        
        VStack {
            Text("highPriorityGesture")
                .font(.title)
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    print("Circle tapped")
                }
        }
        .highPriorityGesture(
            TapGesture()
                .onEnded { _ in
                    print("VStack tapped")
                }
        )
    }
    
}

#Preview {
    tgView3()
}
