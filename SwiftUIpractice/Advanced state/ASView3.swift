import SwiftUI

struct ASView3: View {
    /*
     How to use @ObservedObject to
     manage state from external
     objects
     */
    @StateObject var progress = UserProgress()
    var body: some View {
        Text("use @ObservedObject to  manage state from external objects")
            .font(.title)
             
            
        VStack {
            
                 Text("Your score is \(progress.score)")
                 InnerView(progress: progress)
              }
        .padding()
    }
}

#Preview {
    ASView3(progress: UserProgress())
}

class UserProgress: ObservableObject {
   @Published var score = 0
}


struct InnerView: View {
   @ObservedObject var progress: UserProgress
   var body: some View {
      Button("Increase Score") {
         progress.score += 1
      }
} }
