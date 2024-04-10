import SwiftUI

// MARK: give a view a custom frame
struct VL1: View {
    var body: some View {

            Button{
                print("Button Tapped")
            } label: {
                Text("Welcome")
                    .frame(
                        minWidth: 0,
                        maxWidth: 200,
                        minHeight: 0,
                        maxHeight: 200
                    )
                    .font(.largeTitle)
            }
        
        Text("Please log In")
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity
            )
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(.red)
            //.ignoresSafeArea(.all)
    }
}

#Preview {
    VL1()
}
