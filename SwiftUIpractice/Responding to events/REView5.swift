import SwiftUI

struct REView5: View {
    //MARK: How to add a toolbar to the keyboard
    @State private var name = "Taylor Swift"
    @FocusState var isInputActive: Bool
    
    var body: some View {
        NavigationView {
            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
        }
    }
}

#Preview {
    REView5()
}
