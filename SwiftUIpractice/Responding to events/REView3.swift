import SwiftUI

struct REView3: View {
    //Mark: How to add keyboard shortcuts using keyboardShortcut()
    var body: some View {
        Button("Log in") {
           print("Authenticating...")
        }
        .keyboardShortcut("l")
        
        VStack {
            Button("Run") {
                  print("Running...")
               }
               .keyboardShortcut("r", modifiers: .shift)
               Button("Home") {
                  print("Going home")
            }
               .keyboardShortcut("h", modifiers:
            [.control, .option, .command])
        }
        
        Button("Confirm Launch") {
           print("Launching drone...")
        }
        .keyboardShortcut(.defaultAction)
    }
}

#Preview {
    REView3()
}
