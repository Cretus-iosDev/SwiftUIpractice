import SwiftUI

struct uicView6: View {
    
    //MARK: How to create a segmented control and read values from it
    @State private var favoriteColor = 0
    @State private var FavoriteColor = "Red"
    var colors = ["Red", "Green", "Blue"]
    //MARK: How to create a stepper and read values from it
    @State private var age = 18
    /*
     //MARK: How to hide the label of a Picker,
     Stepper, Toggle, and more using
     labelsHidden()
     */
    @State private var selectedNumber = 0
    //MARK: How to create multi-line editable text with TextEditor
    @State private var profileText = "multi-line editable text"

    
    var body: some View {
        ScrollView(.vertical) {
            Text("Segmented control")
                .font(.title)
            VStack {
                Picker("What is your favorite color?", selection:
                        $favoriteColor) {
                    Text("Red").tag(0)
                    Text("Green").tag(1)
                    Text("Blue").tag(2)
                }
                        .pickerStyle(.segmented)
                Text("Value: \(favoriteColor)")
            }
            
            VStack {
                Picker("What is your favorite color?", selection:
                        $FavoriteColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    } }
                        .pickerStyle(.segmented)
                Text("Value: \(FavoriteColor)")
            }
            
            
            Text("Stepper")
                .font(.title)
            //            VStack {
            //                     Stepper("Enter your age", value: $age, in: 0...130)
            //                     Text("Your age is \(age)")
            //                  }
            VStack {
                Stepper("Enter your age", onIncrement: {
                    age += 1
                }, onDecrement: {
                    age -= 1
                })
                Text("Your age is \(age)")
            }
            
            
//            Picker("Select a number", selection: $selectedNumber) {
//                     ForEach(0..<10) {
//                        Text("\($0)")
//            } }
//            .labelsHidden()
            
            Picker(selection: $selectedNumber, label: EmptyView()) {
                     ForEach(0..<10) {
                        Text("\($0)")
            } }
            
           
            
            NavigationView {
                
                     TextEditor(text: $profileText)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .navigationTitle("About you")
            }
            
        }
        .padding()
    }
}

#Preview {
    uicView6()
}
