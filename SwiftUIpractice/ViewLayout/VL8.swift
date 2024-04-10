import SwiftUI

//MARK: provide visual structure using foreground styles
struct VL8: View {
    var body: some View {
        HStack {
            Image(systemName: "clock.fill")
            Text("Set the time")
        }
        .font(.largeTitle.bold())
        .foregroundStyle(.quaternary)
        
        HStack {
           Image(systemName: "clock.fill")
           Text("Set the time")
        }
        .font(.largeTitle.bold())
        .foregroundStyle(
           .linearGradient(
              colors: [.red, .black],
              startPoint: .top,
              endPoint: .bottom
        ) )
    }
}

#Preview {
    VL8()
}
