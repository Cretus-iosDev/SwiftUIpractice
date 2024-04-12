import SwiftUI

struct sgsView11: View {
    //MARK: lazy load views using LazyVStack and LazyHStack
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1...100, id: \.self) { value in
                    Text("Row \(value)")
                } }
        }
        .frame(height: 300)
    }
}

#Preview {
    sgsView11()
}


struct SampleRow: View {
   let id: Int
    var body: some View {
        Text("Row \(id)")
    }
       init(id: Int) {
          print("Loading row \(id)")
          self.id = id
    }
}

struct cv: View {
   var body: some View {
      ScrollView {
         LazyVStack {
            ForEach(1...100, id: \.self, content:
SampleRow.init)
} }
      .frame(height: 300)
   }
}

#Preview {
    cv()
}
