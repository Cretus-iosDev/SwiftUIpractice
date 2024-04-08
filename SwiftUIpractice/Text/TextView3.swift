import SwiftUI


//MARK: ADD SPACING BETWEEN LETTERS IN TEXT
struct TextView3: View {
    
    @State private var amount: CGFloat = 50
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .tracking(20)
        
        VStack {
            Text("ffi")
                        .font(.custom("AmericanTypewriter", size: 72))
                        .kerning(amount)
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                            .tracking(amount)
            
            Slider(value: $amount, in: 0...100) {
                        Text("Adjust the amount of spacing")
            }
            
            // MARK: format dates inside text views
            VStack {
                // show just the date
                   Text(Date().addingTimeInterval(600), style: .date)
                   // show just the time
                   Text(Date().addingTimeInterval(600), style: .time)
                   // show the relative distance from now, automatically updating
                   Text(Date().addingTimeInterval(600), style: .relative)
                
                   Text(Date()...Date().addingTimeInterval(600))
                  // make a timer style, automatically updating
                   Text(Date().addingTimeInterval(600), style: .timer)
            }
        }
    }
}

#Preview {
    TextView3()
}
