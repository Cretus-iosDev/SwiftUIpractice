import SwiftUI

//MARK: render a gradient
struct ShapeView: View {
    var body: some View {
        ScrollView(.vertical) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .background(
                    LinearGradient(
                        gradient: /*@START_MENU_TOKEN@*/Gradient(
                            colors: [
                                Color.white,
                                Color.black
                            ]
                        )/*@END_MENU_TOKEN@*/,
                        startPoint: .top,
                        endPoint:   .bottom
                    )
                )
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .background(
                    LinearGradient(
                        gradient: /*@START_MENU_TOKEN@*/Gradient(
                            colors: [
                                Color.white,
                                Color.red,
                                Color.black
                            ]
                        )/*@END_MENU_TOKEN@*/,
                        startPoint: .top,
                        endPoint:   .bottom
                    )
                )
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .background(
                    LinearGradient(
                        gradient: /*@START_MENU_TOKEN@*/Gradient(
                            colors: [
                                Color.white,
                                Color.red,
                                Color.black
                            ]
                        )/*@END_MENU_TOKEN@*/,
                        startPoint: .leading,
                        endPoint:   .trailing
                    )
                )
            
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(
                            colors: [
                                .red,
                                .yellow,
                                .blue,
                                .purple
                            ]
                        ),
                        center: .center,
                        startRadius: 50,
                        endRadius: 100
                    )
                )
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(
                    AngularGradient(
                        gradient: Gradient(
                            colors: [
                                .red,
                                .yellow,
                                .green,
                                .blue,
                                .purple,
                                .red
                            ]
                        ),
                        center: .center
                        
                    )
                )
                .frame(width: 200, height: 200)
            
            
            Circle()
                .strokeBorder(
                    AngularGradient(
                        gradient: Gradient(
                            colors: [
                                .red,
                                .yellow,
                                .green,
                                .blue,
                                .purple,
                                .red
                            ]
                        ),
                        center: .center,
                        startAngle: .zero,
                        endAngle: .degrees(360)),
                    lineWidth: 50
                        
                    )
                .frame(width: 200, height: 200)
        }
        .padding()
    }
}

#Preview {
    ShapeView()
}
