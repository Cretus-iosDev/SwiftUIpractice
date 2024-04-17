import SwiftUI

struct LView15: View {
    /*
     How to add custom swipe action buttons to a List row
     */
    let friends = ["Antoine", "Bas", "Curt", "Dave", "Erica"]
    @State private var total = 0
    var body: some View {
                List {
                   Text("Pepperoni pizza")
                      .swipeActions {
                         Button("Order") {
                            print("Awesome!")
                         }
                         .tint(.green)
                      }
                   Text("Pepperoni with pineapple")
                      .swipeActions {
                         Button("Burn") {
                            print("Right on!")
                }
                         .tint(.red)
                      }
                }
        
        
        
//                NavigationView {
//                    List {
//                        ForEach(friends, id: \.self) { friend in
//                            Text(friend)
//                                .swipeActions(allowsFullSwipe: false) {
//                                    Button {
//                                        print("Muting conversation")
//                                    } label: {
//                                        Label("Mute", systemImage:
//                                                "bell.slash.fill")
//                                    }
//                                    .tint(.indigo)
//                                    Button(role: .destructive) {
//                                        print("Deleting conversation")
//                                    } label: {
//                                        Label("Delete", systemImage: "trash.fill")
//                                    }
//                                } }
//                    }
//                    .navigationTitle("custom swipe buttons")
//                }
        
//        NavigationView {
//            List {
//                ForEach(1..<100) { i in
//                    
//                    Text("\(i)")
//                        .swipeActions(edge: .leading) {
//                            Button {
//                                total += i
//                            } label: {
//                                Label("Add \(i)", systemImage: "plus.circle")
//                            }
//                            .tint(.indigo)
//                        }
//                        .swipeActions(edge: .trailing) {
//                            Button {
//                                
//                                total -= i
//                            }
//                        label: {
//                            Label("Subtract \(i)", systemImage: "minus.circle")
//                        }
//                        }
//                }
//                
//            }
//            .navigationTitle("Total: \(total)")
//        }
        
        
    }
}

#Preview {
LView15()
}
