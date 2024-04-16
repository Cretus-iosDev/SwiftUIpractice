import SwiftUI

struct ASView6: View {
    /*
     How to create constant bindings
     */
    var body: some View {
        Text("create constant bindings")
            .font(.title)
        Toggle(isOn: .constant(false)) {
           Text("Show advanced options")
        }
    }
}

#Preview {
    ASView6()
}
