import SwiftUI

struct uicView: View {
//MARK: How to create a tappable button
    @State private var showDetails = false
    
    var body: some View {
        Button("Button title") {
           print("Button tapped!")
        }
        
        VStack(alignment: .leading) {
            Button("Show Details") {
                showDetails.toggle()
            }
            
            if showDetails {
                Text("You should follow me instagram @cretus.dev")
                    .font(.largeTitle)
            }
        }
        
        Button{
            print("Image tapped!!")
        } label: {
            Image("img4")
        }
        
        Button{
            print("button pressed")
        } label: {
            Text("press Me")
                .padding(20)
        }
        .contentShape(Rectangle())
        
        Button("Delete", role: .destructive) {
           print("Perform delete")
        }
    }
}

#Preview {
    uicView()
}
