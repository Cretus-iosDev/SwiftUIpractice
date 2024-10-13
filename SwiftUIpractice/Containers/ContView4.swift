import SwiftUI

struct ContView4: View {
    /*
     How to create scrolling pages of content using tabViewStyle()
     */
    var body: some View {
        Text("How to create scrolling pages of content using tabViewStyle()")
        //        TabView {
        //                 Text("First")
        //                 Text("Second")
        //                 Text("Third")
        //                 Text("Fourth")
        //        }
        //        .tabViewStyle(.page)
        //
        TabView {
            Text("First")
            Text("Second")
            Text("Third")
            Text("Fourth")
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    
//        TabView {
//                Text("First")
//                Text("Second")
//                Text("Third")
//                Text("Fourth")
//       }
//             .tabViewStyle(.page(indexDisplayMode: .never))
//        
    }
}

#Preview {
    ContView4()
}
