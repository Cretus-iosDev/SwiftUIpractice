import SwiftUI

struct REView2: View {
    /*
     //MARK: How to respond to view lifecycle
     events: onAppear() and
     onDisappear()
     */
    var body: some View {
        
        NavigationView {
            
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("respond to view lifecycle events: onAppear() and onDisappear()")
                }
            }
            .onAppear{
                print("contentview appeared")
            }
            .onDisappear{
                print("contentView disappeared")
            }
        }
    }
}

#Preview {
    REView2()
}


struct DetailView: View {
    var body: some View {
        VStack {
            Text("second view")
        }
        .onAppear {
            print("Detailview appeared")
        }
        .onDisappear {
            print("DetailView disappeared")
        }
    }
}
