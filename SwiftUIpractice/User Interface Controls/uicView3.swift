import SwiftUI

struct uicView3: View {
    
    enum Field {
          case firstName
          case lastName
          case emailAddress
    }
    
    @State private var name = ""
    @State private var fname = ""
    @State private var lname = ""
    @State private var emailAddress = ""
    @FocusState private var focusedField: Field?
    @FocusState private var nameIsFocused: Bool
    @State private var tipAmount = ""
    
    var body: some View {
        //MARK:  dismiss the keyboard for a TextField
        Text("dismiss the keyboard")
            .font(.title)
        VStack {
            TextField("Enter your name", text: $name)
                .focused($nameIsFocused)
            
            Button("submit"){
                nameIsFocused = false
            }
        }
        .padding()
        
        Text("To Hide Keybord")
            .font(.title)
        VStack {
            TextField("enter your fName", text: $fname)
                .focused($focusedField,equals: .firstName)
                .textContentType(.givenName)
                .submitLabel(.next)
            TextField("Enter your last name", text: $lname)
                        .focused($focusedField, equals: .lastName)
                        .textContentType(.familyName)
                        .submitLabel(.next)
            TextField("Enter your email address", text: $emailAddress)
                       .focused($focusedField, equals: .emailAddress)
                       .textContentType(.emailAddress)
                                   .submitLabel(.join)
        }
        .onSubmit {
            switch focusedField {
            case .firstName:
                focusedField = .lastName
            case .lastName:
                focusedField = .emailAddress
            default:
                print("Creating account...")
            }
        }
        
        VStack {
                 TextField("Tip Amount ", text: $tipAmount)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                 Button("Submit") {
                    print("Tip: \(tipAmount)")
                    hideKeyboard()
        }
        }
        

        
    }
}

#Preview {
    uicView3()
}


#if canImport(UIKit)
extension View {
   func hideKeyboard() {
UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
} }
#endif


