

import SwiftUI

struct LView13: View {
    /*
     How to adjust List row separator visibility and color
     */
    var body: some View {
        Text("List row separator visibility and color")
            .font(.title)
        List {
            ForEach(1..<100) { index in
                Text("Row \(index)")
                    .listRowSeparator(.hidden)
            }
        }
        
//        List {
//            ForEach(1..<100) { index in
//                Text("Row \(index)")
//                    .listRowSeparatorTint(.red)
//            }
//        }
    }
}

#Preview {
    LView13()
}
