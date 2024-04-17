import SwiftUI

struct LView2: View {
    /*
     How to create a list of dynamic items
     */
    let restaurants = [
         Restaurant(name: "Joe's Original"),
         Restaurant(name: "The Real Joe's Original"),
         Restaurant(name: "Original Joe's")
   ]
    var body: some View {
        Text("list of dynamic items")
            .font(.title)
        List(restaurants) { restaurant in
                 RestaurantRow(restaurant: restaurant)
              }
    }
}

#Preview {
    LView2()
}


// A struct to store exactly one restaurant's data.
struct Restaurant: Identifiable {
   let id = UUID()
   let name: String
}


struct RestaurantRow: View {
    var restaurant: Restaurant
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}
