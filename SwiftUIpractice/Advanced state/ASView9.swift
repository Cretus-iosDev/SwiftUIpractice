import SwiftUI

struct ASView9: View {
    /*
     How to run some code when state changes using onChange()
     */
    @State private var name = ""
    var body: some View {
//        TextField("Enter your name:", text: $name)
//            .textFieldStyle(.roundedBorder)
//            .onChange(of: name) { newValue in
//               print("Name changed to \(name)!")
//        }
        
        TextField("Enter your name:", text:
        $name.onChange(nameChanged))
                 .textFieldStyle(.roundedBorder)
        }
           func nameChanged(to value: String) {
              print("Name changed to \(name)!")
        }
    
        
        }

#Preview {
    ASView9()
}

extension Binding {
func onChange(_ handler: @escaping (Value) -> Void) ->
    Binding<Value> {
          Binding(
             get: { self.wrappedValue },
             set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
             }
    ) }
    }
