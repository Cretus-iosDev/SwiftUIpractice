import SwiftUI

struct vl2: View {
    var body: some View {
//MARK: control spacing around individual views using padding
        ScrollView(.vertical) {
            VStack {
                Text("Using")
                Text("SwiftUI")
                    .padding()
                Text("rocks")
            }
            Divider()
            VStack {
               Text("Using")
               Text("SwiftUI")
                  .padding(.bottom)
               Text("rocks")
            }
           
            Divider()
            VStack {
               Text("Using")
               Text("SwiftUI")
                  .padding(100)
               Text("rocks")
            }
            Divider()
            
            VStack {
               Text("Using")
               Text("SwiftUI")
                  .padding(.bottom, 100)
               Text("rocks")
            }
        }
        .padding()
    }
}

#Preview {
    vl2()
}
