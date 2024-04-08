import SwiftUI


// MARK: How to make TextField uppercase or lowercase using textCase()
struct TextView4: View {
    
    @State private var name = "Rutik"
    
    @Environment(\.redactionReasons) var redactionReasons
    let bio = "The rain in Spain falls mainly on the Spaniards"
    
    
    
    
    var body: some View {
        ScrollView(.vertical) {
            TextField("Shout your name at me", text: $name)
                .textFieldStyle(.roundedBorder)
                .textCase(.uppercase)
                .padding(.horizontal)
            
            
            // MARK: show text and an icon side by side using Label
            Label("Your account", systemImage: "folder.circle")
            Label("Welcome to the app", systemImage: "star.fill")
            Label("Your account", systemImage: "person.crop.circle")
                .font(.title)
            VStack {
                Label("Text Only", systemImage: "heart")
                    .font(.title)
                    .labelStyle(.titleOnly)
                Label("Icon Only", systemImage: "star")
                    .font(.title)
                    .labelStyle(.iconOnly)
                Label("Both", systemImage: "paperplane")
                    .font(.title)
                    .labelStyle(.titleAndIcon)
            }
            Label {
                Text("Rutik.Maraskolhe")
                    .foregroundColor(.primary)
                    .font(.largeTitle)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 64, height: 64)
            }
            
            
            //MARK: mark content as a placeholder using redacted()
            Text("This is placeholder text")
                .font(.title)
                .redacted(reason: .placeholder)
            
            // You can redact several things in your view at once, just by using redacted(reason:) on a container, like this:
            VStack {
                Text("This is placeholder text")
                Text("And so is this")
            }
            .font(.title)
            .redacted(reason: .placeholder)
            
            
            if redactionReasons == .placeholder {
                Text("Loading...")
            } else {
                Text(bio)
                    .redacted(reason: redactionReasons)
            }
            
            
            
        }
        .padding(.vertical)
        
    }
}

#Preview {
    TextView4()
}
