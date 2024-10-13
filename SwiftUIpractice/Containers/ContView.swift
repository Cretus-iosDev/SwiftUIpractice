

import SwiftUI

struct ContView: View {
    /*
     How to embed a view in a navigation view
     */
    var body: some View {
//        NavigationView {
////        no title
//                Text("This is a great app")
//
//       }
        
//        NavigationView {
//       // default style
//            Text(How to embed a view in a navigation view")
//                .navigationTitle("Welcome")
//        }
        
//        NavigationView {
//            //inline
//                 Text("How to embed a view in a navigation view")
//                .navigationTitle("Welcome")
//                .navigationBarTitleDisplayMode(.inline)
//        
//        }
//        
                NavigationView {
                    //inline
                         Text("How to embed a view in a navigation view")
                        .navigationTitle("Welcome")
                        .navigationBarTitleDisplayMode(.large)

                }
    }
}

#Preview {
    ContView()
}
