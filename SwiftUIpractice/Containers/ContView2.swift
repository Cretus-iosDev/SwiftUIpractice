import SwiftUI

struct ContView2: View {
    /*
     How to add bar items to a navigation view
     */
    var body: some View {
//        NavigationView {
//            Text("How to add bar items to a navigation view")
//                .navigationTitle("Welcome")
//                .toolbar {
//                    Button("Help") {
//                        print("Help tapped!")
//                    }
//                }
//        }
        
        NavigationView {
            Text("How to add bar items to a navigation view")
                .navigationTitle("Welcome")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Help") {
                            print("Help tapped!")
                        }
                    }
                }
        }
        
//        NavigationView {
//            Text("How to add bar items to a navigation view")
//                .navigationTitle("Welcome")
//                .toolbar {
//                    ToolbarItemGroup(placement: .navigationBarTrailing) {
//                        Button("About") {
//                            print("About tapped!")
//                        }
//                        Button("Help") {
//                            print("Help tapped!")
//                        }
//                    }
//                }
//        }
    }
}

#Preview {
    ContView2()
}
