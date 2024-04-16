import SwiftUI

struct ASView2: View {
    /*
     How to use @StateObject to
     create and monitor external
     objects
     */
    @StateObject var player = Player()
    var body: some View {
        NavigationView {
            NavigationLink(destination: PlayerNameView(player:
                                                        player)) {
                VStack {
                    Text("use @StateObject to  create and monitor external  objects")
                        .foregroundStyle(.black)
                        .font(.title2)
                        .padding()
                    
                    Text("Show detail view")
                }
            }
            
            
            Text("use @StateObject to  create and monitor external  objects")
                
                
        }
    }
}
#Preview {
    ASView2()
}


// An example class to work with
class Player: ObservableObject {
    @Published var name = "Taylor"
    @Published var age = 26
}



// A view that monitors the Player object for changes, but
// doesn't own it.
struct PlayerNameView: View {
    @ObservedObject var player: Player
    var body: some View {
        Text("Hello I'm, \(player.name)! and I'm \(player.age)")
    } }
