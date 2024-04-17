import SwiftUI

struct LView4: View {
    /*
     How to let users move rows in a list
     */
    @State private var users = ["ironman", "Batman", "superman"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onMove(perform: move)
            }
            .navigationTitle("move rows in a list")
            .toolbar {
                EditButton()
            }
        }
    }
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
        
    }
}

#Preview {
    LView4()
}
