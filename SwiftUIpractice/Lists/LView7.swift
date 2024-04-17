import SwiftUI

struct LView7: View {
    /*
     How to set the background color
     of list rows using
     listRowBackground()
     */
    var body: some View {
        List {
           ForEach(0..<10) {
              Text("Row \($0)")
           }
           .listRowBackground(Color.red)
        }
    }
}

#Preview {
    LView7()
}
