import SwiftUI

struct tgView5: View {
    //MARK: How to create gesture chains using sequenced(before:)
    @State private var message = "Long press then drag"

    var body: some View {
        Text("Gesture chains using sequenced(before:)")
            .font(.title)
            .padding()
        let longPress = LongPressGesture()
                 .onEnded { _ in
                    message = "Now drag me"
        }
              let drag = DragGesture()
                 .onEnded { _ in
                    message = "Success!"
                 }
              let combined = longPress.sequenced(before: drag)
              Text(message)
                 .gesture(combined)
    }
}

#Preview {
    tgView5()
}
