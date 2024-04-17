import SwiftUI

struct LView8: View {
    /*
     How to create grouped and inset grouped lists
     */
    var body: some View {
        Text("create grouped and inset grouped lists")
            .font(.title)
        List {
                 Section(header: Text("Examples")) {
                    ExampleRow()
                    ExampleRow()
                    ExampleRow()
        } }
              .listStyle(.grouped)
        
//        List(0..<100) { i in
//           Text("Row \(i)")
//        }
//        .listStyle(.insetGrouped)
    }
}

#Preview {
    LView8()
}

struct ExampleRow: View {
   var body: some View {
      Text("Example Row")
   }
}
