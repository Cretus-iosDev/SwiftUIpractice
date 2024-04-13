import SwiftUI

struct uicView12: View {
    //MARK: How to take action when the user submits a TextField
    @State private var username = ""
      @State private var password = ""
    
    var body: some View {
        SecureField("Password", text: $password)
                 .onSubmit {
                    print("Authenticating...")
        }
        
        
        Form {
                 TextField("Username", text: $username)
                 SecureField("Password", text: $password)
              }
              .onSubmit {
                 guard username.isEmpty == false && password.isEmpty ==
        false else { return }
                 print("Authenticating...")
        }
        
        //MARK: How to get bordered buttons that stand out
//        Button("Buy: $0.99") {
//           print("Buying...")
//        }
//        .buttonStyle(.bordered)
//        
//        Button("Buy: $0.99") {
//           print("Buying for $0.99")
//        }
//        .buttonStyle(.borderedProminent)
//        
//        
//        Button("Submit") {
//           print("Submitting...")
//        }
//        .tint(.indigo)
//        .buttonStyle(.borderedProminent)
//        
//        Button("Delete", role: .destructive) {
//           print("Deleting...")
//        }
//        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    uicView12()
}
