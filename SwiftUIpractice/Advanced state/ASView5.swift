import SwiftUI

struct ASView5: View {
    /*
     How to send state updates manually using objectWillChange
     */
    // Create an instance of our object
      @StateObject var user = UserAuthentication()

    var body: some View {
        Text("send state updates manually using objectWillChange")
            .font(.title)
        VStack(alignment: .leading) {
                 TextField("Enter your name", text: $user.username)
                 Text("Your username is: \(user.username)")
              }
        .padding()
    }
}

#Preview {
    ASView5()
}


// Create an observable object class that announces
// changes to its only property
class UserAuthentication: ObservableObject {
   var username = "Taylor" {
      willSet {
         objectWillChange.send()
      }
} }
