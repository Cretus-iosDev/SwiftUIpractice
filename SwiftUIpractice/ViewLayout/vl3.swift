import SwiftUI

struct vl3: View {
    var body: some View {
//MARK: provide relative sizes using GeometryReader
        GeometryReader{
            geometry in
            HStack(spacing: 0) {
                Text("Left")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .frame(width: geometry.size.width * 0.33)
                    .background(Color.yellow)
                
                Text("Right")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .frame(width: geometry.size.width * 0.67)
                    .background(Color.orange)
                
                
            }
            .frame(height: 50)
        }
        
//MARK: place content outside the safe area
        Text("Hello world")
            .frame(
                minWidth: 100,
                maxWidth: .infinity,
                minHeight: 100,
                maxHeight: .infinity
            )
            .background(Color.red)
            .ignoresSafeArea()
    }
}

#Preview {
    vl3()
}
