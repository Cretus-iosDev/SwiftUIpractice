import SwiftUI

struct LView5: View {
    /*
     How to add sections to a list
     */
    var body: some View {
        Text("add sections to a list")
            .font(.title)
        List {
            Section(header: Text("Important tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header: Text("Other tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header: Text("Other tasks"), footer: Text("End")) {
                  Text("Row 1")
                  Text("Row 2")
                  Text("Row 3")
            }
            .headerProminence(.increased)
        }
        //.listStyle(.insetGrouped)
    }
}

#Preview {
    LView5()
}


struct TaskRow: View {
   var body: some View {
      Text("Task data goes here")
   }
}
