import SwiftUI

struct tgView6: View {
    //MARK: How to detect the user hovering over a view
    @State private var overText = false
    
    var body: some View {
        Text(" detect the user hovering over a view")
        Text("Hello, World!")
            .foregroundColor(overText ? .green : .red)
            .onHover { over in
                overText = over
            }
        
        Text("Tap me!")
                 .font(.largeTitle)
                 .hoverEffect(.lift)
                 .onTapGesture {
                     print("Text tapped")
        }
          
    }
    
}

#Preview {
    tgView6()
}
