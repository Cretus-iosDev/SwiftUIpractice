import SwiftUI

//MARK: FORMAT TEXT INSIDE TEXT VIEW
struct TextView2: View {
    
    @State private var ingredients = [String]()
    @State private var rolls = [Int]()
    
    //MARK: LENGTH
    let length = Measurement(value: 225, unit:
    UnitLength.centimeters)
    
    //MARK: DATE FORMATE
    static let taskDateFormat: DateFormatter = {
          let formatter = DateFormatter()
          formatter.dateStyle = .long
          return formatter
    }()
    let dueDate = Date()

    var body: some View {
        VStack {
                 Text(ingredients, format: .list(type: .and))
            Button("Add Ingredient") {
                let possibles = ["Egg", "Sausage", "Bacon", "Spam"]
                if let newIngredient = possibles.randomElement() {
                    ingredients.append(newIngredient)
                }
            }
        }
        
        VStack {
            Text(rolls, format: .list(memberStyle: .number,
                                      type: .and))
            Button("Roll Dice") {
                let result = Int.random(in: 1...6)
                rolls.append(result)
            }
        }
        
        Text(length, format: .measurement(width: .wide))
        
        Text(72.3, format: .currency(code: "INR"))
        
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
        
        
        
    }
}

#Preview {
    TextView2()
}
