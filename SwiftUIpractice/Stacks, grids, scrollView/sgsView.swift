import SwiftUI

struct sgsView: View {
    var body: some View {
//MARK: create stacks using VStack and HStack
        VStack {
            Text("SwiftUI")
            Text("rocks")
        }
        HStack {
            Text("SwiftUI")
            Text("rocks")
        }
        .padding()
        
        
//MARK: customize stack layouts with alignment and spacing
        VStack(spacing: 50) {
            Text("SwiftUI")
            Divider()
            Text("rocks")
        }
        
        
        VStack(alignment: .leading) {
            Text("SwiftUI")
            Text("rocks")
        }
        .padding()
        
        VStack(alignment: .leading, spacing: 20) {
           Text("SwiftUI")
           Text("rocks")
        }
    }
}

#Preview {
    sgsView()
}
