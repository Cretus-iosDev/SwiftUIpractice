import SwiftUI

struct LView12: View {
    /*
     How to use implicit stacking
     */
    let users = [User(), User(), User()]
    var body: some View {
    Text("use implicit stacking")
            .font(.title)
        List(users) { user in
            HStack {
                Image("img2")
                   .resizable()
                   .frame(width: 40, height: 40)
                Text(user.username)
            }
       }
    }
}

#Preview {
    LView12()
}

// An example struct to hold some data
struct User: Identifiable {
   let id = UUID()
   let username = "Anonymous"
}
