import SwiftUI

struct FView: View {
    /*
     Basic form design
     */
@State private var enableLogging = false
@State private var selectedColor = "Red"
@State private var colors = ["Red", "Green", "Blue"]
    var body: some View {
        Form{
            Picker("select a color", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            
            Toggle("enable logging", isOn: $enableLogging)
            
            Button("save change"){
                
            }
        }
    }
}

#Preview {
    FView()
}
