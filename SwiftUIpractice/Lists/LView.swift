import SwiftUI

struct LView: View {
    /*
     How to create a list of static items
     */
    
    var body: some View {
        Text("list of static items")
            .font(.title)
        List {
                 Pizzeria(name: "Joe's Original")
                 Pizzeria(name: "The Real Joe's Original")
                 Pizzeria(name: "Original Joe's")
        }
    }
}

#Preview {
    LView()
}


struct Pizzeria: View {
   let name: String
   var body: some View {
      Text("Restaurant: \(name)")
} }
