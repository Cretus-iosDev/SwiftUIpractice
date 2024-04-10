import SwiftUI


//MARK: create views in a loop using ForEach
struct vl5: View {
    
    let colors: [Color] = [.red, .green, .blue]
    let results = [
          SimpleGameResult(score: 8),
          SimpleGameResult(score: 5),
          SimpleGameResult(score: 10)
    ]
    let Results = [
          IdentifiableGameResult(score: 8),
          IdentifiableGameResult(score: 5),
          IdentifiableGameResult(score: 10)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
           ForEach((1...10).reversed(), id: \.self) {
              Text("\($0)...")
           }
           Text("Ready or not, here I come!")
        }
        
        VStack {
            ForEach(colors, id: \.self) { color in
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            }
        }
        .padding()
        
        VStack {
            ForEach(results, id: \.id) { result in
                       Text("Result: \(result.score)")
           }
        }
        .padding()
        
        VStack {
            ForEach(Results) { Result in
                Text("Result: \(Result.score)")
            }
        }
    }
}

#Preview {
    vl5()
}


struct SimpleGameResult {
   let id = UUID()
   let score: Int
}

struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}
