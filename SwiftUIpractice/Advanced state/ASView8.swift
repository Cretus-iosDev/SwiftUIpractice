import SwiftUI

struct ASView8: View {
    /*
     How to use a timer with SwiftUI
     */
    @State var currentDate = Date()
    @State var timeRemaining = 10
    let timer = Timer.publish(every: 1, on: .main,
                              in: .common).autoconnect()
    var body: some View {
        Text("use a timer with SwiftUI")
            .font(.title)
            .padding()
        
        Text("currentDate")
        Text("\(currentDate)")
            .onReceive(timer) { input in
                currentDate = input
            }
            .padding()
        
        
        Text("timeRemaining")
        Text("\(timeRemaining)")
            .onReceive(timer) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                }
            }
    }
    
}
#Preview {
    ASView8()
}
