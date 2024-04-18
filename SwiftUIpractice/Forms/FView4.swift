
import SwiftUI

struct FView4: View {
    /*
     Enabling and disabling elements in forms
     */
    @State private var agreedToTerms = false
    var body: some View {
        Text("Enabling and disabling elements in forms")
            .font(.title2)
        Form {
            Section {
                Toggle("Agree to terms and conditions", isOn:
                        $agreedToTerms)
            }
            Section {
                Button("Continue") {
                    print("Thank you!")
                }
                .disabled(agreedToTerms == false)
            }
        }
    }
}

#Preview {
    FView4()
}
