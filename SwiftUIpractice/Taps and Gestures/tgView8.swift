
import SwiftUI

struct tgView8: View {
    /*
     How to control the tappable area of a view using contentShape()
     */
    var body: some View {
        VStack {
            Text("Control the tappable area of a view using contentShape()")
                .font(.title)
            Image(systemName: "person.circle").resizable().frame(width:
                                                                    50, height: 50)
            Spacer().frame(height: 50)
            Text("robin")
        }
        .contentShape(Rectangle())
            .onTapGesture {
                print("Show details for user")
            }
        }
}

#Preview {
    tgView8()
}
