import SwiftUI

//MARK: use images and other views as a backgrounds
struct ShapeView2: View {
    var body: some View {
        ScrollView(.vertical) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 48))
                .padding(50)
                .background(
                Image("img4")
                    .resizable()
                )
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .background(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 50, height: 50)
                )
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .background(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                )
                .clipped()
            
            
            //MARK: display solid shapes
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.green)
                .frame(width: 150, height: 100)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 150, height: 100)
            
        }
        .padding()
    }
}

#Preview {
    ShapeView2()
}
