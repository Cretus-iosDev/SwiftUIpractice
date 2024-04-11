import SwiftUI

struct sgsView4: View {
//MARK: layer views on top of each other using ZStack
    var body: some View {
        ScrollView(.vertical) {
            ZStack {
                Image("img4")
                Text("Hacking with Swift")
                    .font(.largeTitle)
                    .background(Color.black)
                    .foregroundColor(.white)
            }
            
            ZStack(alignment: .leading) {
               Image("img4")
               Text("Hacking with Swift")
                    .font(.largeTitle)
                    .background(Color.black)
                    .foregroundColor(.white)
            }
            
        }
    }
}

#Preview {
    sgsView4()
}
