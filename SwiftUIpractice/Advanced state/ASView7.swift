import SwiftUI

struct ASView7: View {
    /*
     How to create custom bindings
     */
    @State private var username = ""
    var body: some View {
        let binding = Binding(
                 get: { self.username },
                 set: { self.username = $0 }
              )
        
        return VStack {
            Text("create custom bindings")
                .font(.title)
                 TextField("Enter your name", text: binding)
        }
        .padding()
    }
}

#Preview {
    ASView7()
}


struct CoView: View {
    @State private var firstToggle = false
    @State private var secondToggle = false
    var body: some View {
        let firstBinding = Binding(
            get: { self.firstToggle },
            set: {
                self.firstToggle = $0
                if $0 == true {
                    self.secondToggle = false
                } }
        )
        let secondBinding = Binding(
            get: { self.secondToggle },
            set: {
                self.secondToggle = $0
                if $0 == true {
                    self.firstToggle = false
                } }
        )
        return VStack {
            Text("create custom bindings")
                .font(.title)
            Toggle(isOn: firstBinding) {
                Text("First toggle")
            }
            Toggle(isOn: secondBinding) {
                        Text("Second toggle")
            }
        }
    }
}


#if DEBUG
struct CoView_Previews: PreviewProvider {
    static var previews: some View {
        CoView()
    }
}
#endif
