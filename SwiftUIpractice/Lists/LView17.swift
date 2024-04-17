import SwiftUI

struct LView17: View {
    /*
     How to create a List or a ForEach from a binding
     */
    @State private var users = [
          Users(name: "Taylor"),
          Users(name: "Justin"),
          Users(name: "Adele")
    ]
    var body: some View {
        Text("create a List or a ForEach from a binding")
            .font(.title)
        List($users) { $users in
            Text(users.name)
            Spacer()
            Toggle("User has been contacted", isOn: $users.isContacted)
                .labelsHidden()
        }
    }
}

#Preview {
    LView17()
}

struct Users: Identifiable {
   let id = UUID()
   var name: String
   var isContacted = false
}
