import SwiftUI

struct LView10: View {
    /*
     How to scroll to a specific row in a list
     */
    var body: some View {
        Text("scroll to a specific row in a list")
            .font(.title)
            .padding()
        ScrollViewReader { proxy in
            VStack {
                Button("Jump to #50") {
                    proxy.scrollTo(50)
                }
                List(0..<100, id: \.self) { i in
                    Text("Example \(i)")
                        .id(i)
                }
            }
        }
    }
        }
#Preview {
    LView10()
}
