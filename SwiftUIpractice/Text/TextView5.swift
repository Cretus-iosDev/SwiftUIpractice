import SwiftUI

struct TextView5: View {
    
    @Environment(\.redactionReasons) var redactionReasons
    
    var body: some View {
        //MARK: mark content as private using privacySensitive()
        VStack {
            Text("Card number")
                .font(.headline)
            Text("1234 5678 9012 3456")
                .privacySensitive()
        }
        
        VStack {
            Text("Card number")
                .font(.headline)
            if redactionReasons.contains(.privacy) {
                Text("[HIDDEN]")
            } else {
                Text("[HIDDEN]")
            }
        }

        
        ScrollView(.vertical){
            //MARK: render Markdown content in text
            VStack(spacing: 16) {
               Text("This is regular text.")
               Text("* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
               Text("~~A strikethrough example~~")
               Text("`Monospaced works too`")
               Text("Visit Apple: [click here](https://apple.com)")
            }.padding()
            
            // MARK:  let users select text
            VStack(spacing: 20) {
               Text("You can't touch this")
               Text("Break it down!")
                 
            }
            .textSelection(.enabled)
            

            
        }.padding()
        
        
    }
}

#Preview {
    TextView5()
}
