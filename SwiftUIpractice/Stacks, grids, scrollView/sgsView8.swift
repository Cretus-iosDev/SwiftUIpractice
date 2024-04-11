import SwiftUI

struct sgsView8: View {
    /*
     //MARK: make a scroll view move
     to a location using
     ScrollViewReader
     */
    
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
                ScrollView{
                    ScrollViewReader { value in
                        Button("Jump to #8") {
                            value.scrollTo(8)
                        }
                        .padding()
                        ForEach(0..<100) { i in
                            Text("Example \(i)")
                                .font(.title)
                                .frame(width: 200, height: 200)
                                .background(colors[i % colors.count])
                                .id(i)
                        }
        
                    }
                }
                .frame(height: 350)
        
        ScrollView {
            ScrollViewReader { value in
                Button("Jump to #8") {
                    value.scrollTo(8, anchor: .top)
                }
                .padding()
                ForEach(0..<100) { i in
                    Text("Example \(i)")
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .background(colors[i % colors.count])
                        .id(i)
                } }
        }
        .frame(height: 350)
    }
}


#Preview {
    sgsView8()
}
