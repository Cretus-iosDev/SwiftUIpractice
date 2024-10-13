import SwiftUI

struct ContView3: View {
    @State var selectedView = 1
    /*
     How to embed views in a tab bar using TabView
     */
    var body: some View {
        Text("How to embed views in a tab bar using TabView")
        //        TabView {
        //            Text("First View")
        //                .padding()
        //                .tabItem {
        //                    Image(systemName: "1.circle")
        //                    Text("First")
        //                }
        //                .tag(1)
        //            Text("Second View")
        //                .padding()
        //                .tabItem {
        //                    Image(systemName: "2.circle")
        //                    Text("Second")
        //                }
        //                .tag(2)
        //        }
        
//        TabView {
//            Text("First View")
//                .padding()
//                .tabItem {
//                    Label("First", systemImage: "1.circle")
//                }
//                .tag(1)
//            Text("Second View")
//                .padding()
//                .tabItem {
//                    Label("Second", systemImage: "2.circle")
//                }
//                .tag(2)
//        }
        
        TabView(selection: $selectedView) {
                 Button("Show Second View") {
                    selectedView = 2
                 }
                 .padding()
                 .tabItem {
                    Label("First", systemImage: "1.circle")
                 }
        .tag(1)
                 Button("Show First View") {
                    selectedView = 1
                 }
                 .padding()
                 .tabItem {
                    Label("Second", systemImage: "2.circle")
                 }
        .tag(2) }
    }
}

#Preview {
    ContView3()
}
