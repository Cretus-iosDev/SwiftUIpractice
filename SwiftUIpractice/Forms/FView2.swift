

import SwiftUI

struct FView2: View {
    /*
     Breaking forms into sections
     */
    @State private var enableLogging = false
       @State private var selectedColor = "Red"
       @State private var colors = ["Red", "Green", "Blue"]
    
    var body: some View {
        Form {
            Section(footer: Text("note: enabling logging may slow down the app")) {
                Picker("select a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                
                Toggle("enable logging", isOn: $enableLogging)
            }
            
            Section {
                Button("save chnage") {
                    
                }
            }
        }
    }
}

#Preview {
    FView2()
}
