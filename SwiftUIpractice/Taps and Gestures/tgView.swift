import SwiftUI

struct tgView: View {
    
    //MARK: How to add a gesture recognizer to a view
    @State private var scale: CGFloat = 1.0
    @State private var dragCompleted =  false
    @State private var dragOffset = CGSize.zero
    

    var body: some View {
//        ScrollView(.vertical) {
////            Text(" TapGesture")
////                .font(.title)
////            Image("img4")
////                .scaleEffect(scale)
////                .gesture(
////                TapGesture()
////                    .onEnded{ _ in
////                        scale -= 0.1
////                    }
////                )
//            
//            
////            Text("LongPressGesture")
////                .font(.title)
////            Image("img4")
////                .scaleEffect(scale)
////                .gesture(
////                    LongPressGesture(minimumDuration: 1)
////                        .onEnded {
////                            _ in
////                            scale /= 2
////                        }
////                )
//            
//            
//            
//        }
//        .padding()
        
        
//        VStack {
//            Image("img4")
//                .gesture(
//                DragGesture(minimumDistance: 50)
//                    .onEnded
//                {
//                    _ in
//                    dragCompleted = true
//                }
//                )
//            if dragCompleted {
//                Text("Drag complete")
//            }
//        }
        
        
        VStack {
            Text("Drag offset")
                .font(.title)
            Image("img4")
                .offset(dragOffset)
                .gesture(DragGesture()
                    .onChanged{
                        gesture in
                        dragOffset = gesture.translation
                    }
                    .onEnded{
                        gesture in
                        dragOffset = .zero
                        
                    }
                
                )
        }
        
        
    }
}

#Preview {
    tgView()
}
