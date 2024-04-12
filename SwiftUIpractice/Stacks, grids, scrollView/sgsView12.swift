import SwiftUI

struct sgsView12: View {
    //MARK: How to add visual effect blurs
    var body: some View {
        ZStack {
           Image("img4")
           Text("Visit Singapore")
              .padding()
              .background(.thinMaterial)
        }
        ZStack {
           Image("img4")
           Text("Visit Singapore")
                .foregroundColor(.secondary)
                      .padding()
                      .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    sgsView12()
}
