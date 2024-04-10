import SwiftUI


//MARK: control layout priority using layoutPriority()
struct vl6: View {
    var body: some View {
        HStack {
            Text("The rain Spain falls mainly on the Spaniards.")
            Text("Knowledge is power, France is bacon.")
        }
        .font(.largeTitle)
        Divider()
        HStack {
            Text("The rain Spain falls mainly on the Spaniards.")
            Text("Knowledge is power, France is bacon.")
                .layoutPriority(1)
        }
        .font(.largeTitle)
    }
}

#Preview {
    vl6()
}
