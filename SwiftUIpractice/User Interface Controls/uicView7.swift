import SwiftUI

struct uicView7: View {
    //MARK: How to let users select a color with ColorPicker
    @State private var bgColor = Color.red
    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: false)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(bgColor)
    }
}

#Preview {
    uicView7()
}
