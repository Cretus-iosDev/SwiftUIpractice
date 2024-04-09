import SwiftUI


//MARK: fill and stroke shapes at the same time
struct ShapView3: View {
    
    //MARK:  rotationEffect() modifier.
    @State private var completionAmount: CGFloat = 0.0
    let timer = Timer.publish(
        every: 1,
        on: .main,
        in: .common
    ).autoconnect()
    
    var body: some View {
        ScrollView(.vertical){
            Circle()
                .strokeBorder(Color.black, lineWidth: 20)
                .background(
                    Circle()
                        .fill(
                            Color.blue
                        )
                )
                .frame(width: 150, height: 150)
            
            
            ZStack {
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .strokeBorder(Color.black, lineWidth: 20)
                
            }
            .frame(width: 150,height: 150)
            
            
            //MARK: draw part of a solid shape using trim()
            Circle()
               .trim(from: 0, to: 0.5)
               .frame(width: 200, height: 200)
            
            //MARK:  rotationEffect() modifier.
            Rectangle()
                 .trim(from: 0, to: completionAmount)
                 .stroke(Color.red, lineWidth: 20)
                 .frame(width: 200, height: 200)
                 .rotationEffect(.degrees(-90))
                 .onReceive(timer) { _ in
                     withAnimation {
                         if completionAmount == 1 {
                             completionAmount = 0
                         } else {
                             completionAmount += 0.2
                         }
                     }
                 }
                 .padding()
        }
        .padding()
    }
}

#Preview {
    ShapView3()
}


extension Shape {
    func fill<
        Fill: ShapeStyle,
        Stroke: ShapeStyle>(
            _ fillStyle:
            Fill,
            strokeBorder strokeStyle: Stroke,
            lineWidth: CGFloat = 1
        )
    -> some View {
        self
            .stroke(
                strokeStyle,
                lineWidth: lineWidth
            )
            .background(self.fill(fillStyle))
    }
}


extension InsettableShape {
    func fill<
        Fill: ShapeStyle,
        Stroke: ShapeStyle>(
            _ fillStyle:
            Fill,
            strokeBorder strokeStyle: Stroke,
            lineWidth: CGFloat = 1
        )
    -> some View {
        self
    } }
