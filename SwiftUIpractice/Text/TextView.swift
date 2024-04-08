
import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(spacing: 18){
            ScrollView{
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                   .lineLimit(3)
                   .frame(width: 200)
                
                Text("This is an extremely long string of text that will never  fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode().")
                    .lineLimit(1)
                    .truncationMode(.middle)
                
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                   .font(.largeTitle)
                   .frame(width: 300)
                
                
                Text("The best laid plans")
                   .foregroundColor(.red)
                
                
                Text("The best laid plans")
                   .padding()
                   .background(Color.yellow)
                   .foregroundColor(.white)
                   .font(.headline)
                
                Text("This is an extremely long text string that will never fit  even the widest of phones without wrapping")
                   .font(.largeTitle)
                   .lineSpacing(50)
                   .frame(width: 300)
                
                Text("This is an extremely long text string that will never fit  even the widest of phones without wrapping")
                   .font(.largeTitle)
                   .multilineTextAlignment(.center)
                   .frame(width: 300)
            }
            
        }
        .padding()
    }
}

#Preview {
    TextView()
}
