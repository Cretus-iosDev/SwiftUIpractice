
import SwiftUI

struct ASView: View {
    /*
     What’s the difference between
     @ObservedObject, @State, and
     @EnvironmentObject?
     */
    @State private var tapCount = 0
    var body: some View {
        
        ScrollView(.vertical) {
            Text("What’s the difference between @ObservedObject, @State, and @EnvironmentObject?")
                .font(.title2)
                .padding()
                
            Text("Summary")
                .font(.title2)
            Text(
                 " 1.  Use @State for simple properties that belong to a single view. They should usually be marked private.")
              Text("   2.  Use @ObservedObject for complex properties that might belong to several views. Most times you’re using a reference type you should be using @ObservedObject for it.")
                     
               Text("  3.  Use @StateObject once for each observable object you use, in whichever part of yourcode is responsible for creating it.")
                 Text("4.  Use @EnvironmentObject for properties that were created elsewhere in the app, such as shared data.")
            
            
            Button("Tap count: \(tapCount)") {
                     tapCount += 1
                  }
            
        }.padding()
    }
}

#Preview {
    ASView()
}


/*
 --Summary--
 1.  Use @State for simple properties that belong to a single view. They should usually be marked private.
 2.  Use @ObservedObject for complex properties that might belong to several views. Most
     times you’re using a reference type you should be using @ObservedObject for it.
 3.  Use @StateObject once for each observable object you use, in whichever part of yourcode is responsible for creating it.
 4.  Use @EnvironmentObject for properties that were created elsewhere in the app, such as shared data.
 */
