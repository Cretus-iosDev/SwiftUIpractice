import SwiftUI

struct LView6: View {
    /*
     How to enable editing on a list using EditButton
     */
    @State private var users = ["ironman", "Batman", "superman"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user) }
                .onDelete(perform: delete)
            }
            .navigationTitle("editing on a list using EditButton")
            .toolbar {
                EditButton()
            }
        }
    }
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    LView6()
}
