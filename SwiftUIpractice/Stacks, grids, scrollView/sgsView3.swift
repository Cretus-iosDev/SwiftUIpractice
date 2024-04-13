import SwiftUI

struct sgsView3: View {
//MARK: make a fixed size Spacer
    var body: some View {
        VStack {
           Text("First Label")
           Spacer()
              .frame(height: 50)
           Text("Second Label")
        }
        
//        VStack {
//           Text("First Label")
//           Spacer(minLength: 50)
//           Text("Second Label")
//        }
    }
}

#Preview {
    sgsView3()
}
