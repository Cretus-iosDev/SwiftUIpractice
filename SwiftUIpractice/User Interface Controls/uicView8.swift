import SwiftUI

struct uicView8: View {
    /*
     //MARK:How to show progress on a task using ProgressView
     */
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main,in: .common).autoconnect()
    var body: some View {
        VStack {
            ProgressView("Downloading...", value: downloadAmount,
                         total: 100)
            .onReceive(timer) { _ in
                if downloadAmount < 100 {
                    downloadAmount += 2
                }
            }
        }
        .padding()
        
        //MARK: How to show indeterminate progress using ProgressView
        Text("Show indeterminate progress")
            .font(.title)
        ProgressView("Downloading...")
    }
}

#Preview {
    uicView8()
}
