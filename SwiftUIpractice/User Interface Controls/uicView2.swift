import SwiftUI

struct uicView2: View {
    
    
    //MARK: How to read text from a TextField
    @State private var name: String = ""
    //MARK: add a placeholder to a TextField
    @State private var emailAddress = ""
    //MARK: disable autocorrect in a TextField
    @State private var fname = ""
    
    /*
     //MARK: How to disable the overlay color
     for images inside Button and
     NavigationLink
     */
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Details view Here")) {
                Image("img4")
                    .renderingMode(.original)
            }
            .buttonStyle(.plain)
        }
        
//        //MARK: How to read text from a TextField
//        VStack(alignment: .leading) {
//            TextField("Enter your name", text: $name)
//            //add a border to a TextField
//                .textFieldStyle(.roundedBorder)
//            Text("Hello, \(name)!!")
//            
//            ////MARK: add a placeholder to a TextField
//            TextField("abc@dsa.com", text: $emailAddress)
//                .textFieldStyle(.roundedBorder)
//            
//            //MARK: disable autocorrect in a TextField
//            TextField("enter your name", text: $fname)
//                .disableAutocorrection(true)
//                
//               
//        }
//        .padding()
    }
}

#Preview {
    uicView2()
}
