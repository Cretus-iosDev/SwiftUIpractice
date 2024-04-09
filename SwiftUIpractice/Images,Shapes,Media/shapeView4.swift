import SwiftUI

//MARK: When should you use ContainerRelativeShape?
struct shapeView4: View {
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .inset(by: 4)
                .fill(Color.blue)
            
            Text("Hello, World!")
                .font(.title)
        }
        .frame(width: 300, height: 200)
        .background(Color.red)
        .clipShape(Capsule())
    }
}


#Preview {
    shapeView4()
}
