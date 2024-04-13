import SwiftUI

struct uicView11: View {
    
    //MARK: How to open web links in Safari
    @Environment(\.openURL) var openURL
    
    /*
     //MARK: How to customize the submit
     button for TextField, SecureField,
     and TextEditor
     */
    @State private var username = ""
    
    var body: some View {
        Link("Learn SwiftUI", destination: URL(string: "https://github.com/Cretus-iosDev")!)
            .font(.title)
            .foregroundColor(.red)
        
        Link(destination: URL(string: "https://github.com/Cretus-iosDev")!){
            Image(systemName: "link.circle.fill")
                .font(.largeTitle)
        }
        
        Button("Visit LINK") {
                 openURL(URL(string: "https://www.apple.com")!)
              }

        TextField("Username", text: $username)
           // .submitLabel(.join)
            //.submitLabel(.done)
//            .submitLabel(.go)
//            .submitLabel(.next)
           .submitLabel(.continue)
//            .submitLabel(.return)
//            .submitLabel(.search)
//            .submitLabel(.send)
    }
}

#Preview {
    uicView11()
}
