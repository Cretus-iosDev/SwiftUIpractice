

import SwiftUI

struct LView11: View {
    
    /*
     How to allow row selection in a list
     */
    @State private var selection: String?
    let names = [
          "Cyril",
          "Lana",
          "Mallory",
          "Sterling"
    ]
    var body: some View {
        NavigationView {
            List(names, id: \.self, selection: $selection) { name
               in
                Text(name)
            }
            .navigationTitle("List Selection")
            .toolbar {
                EditButton()
            }
        }
    }
}

#Preview {
    LView11()
}
