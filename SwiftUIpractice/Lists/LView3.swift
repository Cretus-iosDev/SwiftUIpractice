import SwiftUI

struct LView3: View {
    /*
     How to let users delete rows from a list
     */
    @State private var users = ["ironman", "Batman", "superman"]
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user) }
                .onDelete(perform: delete)
            }
            .navigationTitle("Users")
        }
        
    }
    func delete(at offsets: IndexSet) {
       // delete the objects here
        users.remove(atOffsets: offsets)
    }
    
}
 
#Preview {
    LView3()
}


