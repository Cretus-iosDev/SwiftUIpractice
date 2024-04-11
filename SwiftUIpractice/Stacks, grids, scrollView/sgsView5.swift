import SwiftUI

struct sgsView5: View {
//MARK: change the order of view layering using Z index
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
                .zIndex(1)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100,height: 100)
        }
    }
}

#Preview {
    sgsView5()
}


struct Dv: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    
    var body: some View {
        if horizontalSizeClass == .compact {
             Text("Compact")
          } else {
             Text("Regular")
          }
    }
}

#Preview {
    Dv()
}
