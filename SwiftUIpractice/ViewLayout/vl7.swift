import SwiftUI


//MARK: make two views the same width or height
struct vl7: View {
    var body: some View {
        HStack {
           Text("This is a short string.")
              .padding()
              .frame(maxHeight: .infinity)
              .background(Color.red)
           Text("This is a very long string with lots and lots of text that will definitely run across multiple lines because it's  just so long.")
               
        
              .padding()
              .frame(maxHeight: .infinity)
              .background(Color.green)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxHeight: 200)
        
        VStack {
           Button("Log in") { }
              .foregroundColor(.white)
              .padding()
              .frame(maxWidth: .infinity)
              .background(Color.red)
              .clipShape(Capsule())
           Button("Reset Password") { }
              .foregroundColor(.white)
              .padding()
              .frame(maxWidth: .infinity)
              .background(Color.red)
              .clipShape(Capsule())
        }
        .fixedSize(horizontal: true, vertical: false)
    }
}

#Preview {
    vl7()
}
