import SwiftUI

struct uicView4: View {
    //MARK: How to format a TextField for numbers
    @State private var score = 0
    //MARK: How to create secure text fields using SecureField
    @State private var password: String = ""
    //MARK: How to create a toggle switch
    @State private var showGreeting = true
    @State private var isOn = false
    //MARK: How to create a slider and read values from it
    @State private var celsius: Double = 0
    
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    
    var body: some View {
        ScrollView(.vertical) {
            Text(" TextField for numbers")
                .font(.title)
            //        VStack {
            //            TextField("Enter your score", value: $score,
            //                      format: .number)
            //            .textFieldStyle(.roundedBorder)
            //            .padding()
            //            Text("Your score was \(score).")
            //        }
            
            VStack {
                TextField("Enter your score", value: $score,
                          format: .number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                Text("Your score was \(score).")
            }
            .padding()
            
            
            
            Text("Secure text fields using SecureField")
                .font(.title)
            VStack {
                SecureField("Enter a password", text: $password)
                Text("You entered: \(password)")
            }
            .padding()
            
            
            Text("Toggle switch")
                .font(.title)
            VStack {
                Toggle("Show welcome message", isOn: $showGreeting)
                //color
                    .toggleStyle(SwitchToggleStyle(tint: .cyan))
                if showGreeting {
                    Text("Hello World!")
                }
            }
            .padding()
            
            Text("Toggle Button")
                .font(.title)
            Toggle("Filter", isOn: $isOn)
            .toggleStyle(.button)
            .tint(.mint)
            
            Text("Slider and read values ")
                .font(.title)
            VStack {
                     Slider(value: $celsius, in: -100...100)
                Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahreheit")
            }
        }
        .padding()
        
    }
}

#Preview {
    uicView4()
}
