import SwiftUI

struct FView3: View {
    /*
     Pickers in forms
     */
    @State private var selectedStrength = "Mild"
       let strengths = ["Mild", "Medium", "Mature"]
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    Picker("Strength", selection: $selectedStrength) {
                        ForEach(strengths, id: \.self) {
                                    Text($0)
                        }
                    }
                   // .pickerStyle(.wheel)
                }
            }
            .navigationTitle("Select your cheese")
        }
    }
}

#Preview {
    FView3()
}
