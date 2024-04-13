import SwiftUI

struct sgsView7: View {
    /*
     //MARK: add horizontal and vertical
     scrolling using ScrollView
     */
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(Color.red)
                }
            }
        }
        .frame(height: 350)
        
//        ScrollView(.horizontal,showsIndicators: false){
//            HStack(spacing: 20) {
//                ForEach(0..<10) {
//                    Text("Item \($0)")
//                        .foregroundStyle(.white)
//                        .font(.largeTitle)
//                        .frame(width: 200, height: 200)
//                        .background(Color.red)
//                }
//            }
//        }
//        .frame(height: 350)
        
    }
}

#Preview {
    sgsView7()
}
