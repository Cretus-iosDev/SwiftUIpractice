import SwiftUI

struct uicView5: View {
//MARK: How to create a picker and read values from it
   var colors = ["Red", "Green", "Blue", "Tartan"]
   @State private var selectedColor = "Red"
    
//MARK: How to create a date picker and read values from it
    @State private var birthDate = Date()
    @State private var date = Date()
    
    let dateFormatter: DateFormatter = {
          let formatter = DateFormatter()
          formatter.dateStyle = .long
          return formatter
    }()

    
    var body: some View {
        
        Text("Pick color")
            .font(.title)
        VStack {
            Picker("Please choose a color", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            Text("You selected: \(selectedColor)")
        }
        .padding()
        
        Text("Date picker")
            .font(.title)
        VStack {
            DatePicker(selection: $birthDate, in: ...Date(),
            displayedComponents: .date) {
                        Text("Select a date")
                     }
            Text("Date is \(birthDate.formatted(date: .long, time: .omitted))")


            Text("Enter your birthday")
                        .font(.largeTitle)
                     DatePicker("Enter your birthday", selection: $date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .frame(maxHeight: 400)
        }
        .padding()
    }
}

#Preview {
    uicView5()
}
