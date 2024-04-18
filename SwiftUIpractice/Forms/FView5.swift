
import SwiftUI

struct FView5: View {
    /*
     Showing and hiding form rows
     */
    @State private var showingAdvancedOptions = false
       @State private var enableLogging = false
    
    var body: some View {
        Text("Showing and hiding form rows")
            .font(.title2)
        Form {
            Section {
                Toggle("Show advanced options", isOn:
                        $showingAdvancedOptions.animation())
                if showingAdvancedOptions {
                    Toggle("Enable logging", isOn: $enableLogging)
                }
            }
        }
    }
}

#Preview {
    FView5()
}
