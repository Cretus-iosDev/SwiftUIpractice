import SwiftUI

//struct sgsView10: View {
//    //MARK: position views in a grid using LazyVGrid and LazyHGrid
//    let data = (1...100).map {"Item \($0)"}
//    let columns = [
//        GridItem(.adaptive(minimum: 80))
//    ]
//    let Columns = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//    
//    let COlumns = [
//        GridItem(.fixed(100)),
//        GridItem(.flexible()),
//    ]
//    
//    let items = 1...50
//    let rows = [
//        GridItem(.fixed(50)),
//        GridItem(.fixed(50))
//    ]
//    
//    //    let Rows: Int
//    //    let COLUmns: Int
//    //    let content: (Int, Int) -> Content
//    
//    
//    var body: some View {
//        //        ScrollView{
//        //            LazyVGrid(columns: columns,spacing: 20) {
//        //                ForEach(data, id: \.self) { item in
//        //                Text(item)
//        //                }
//        //            }
//        //            .padding(.horizontal)
//        //        }
//        //        .frame(maxHeight: 300)
//        
//        //        ScrollView {
//        //            LazyVGrid(columns: Columns, spacing: 20) {
//        //                        ForEach(data, id: \.self) { item in
//        //            Text(item) }
//        //            }
//        //            .padding(.horizontal)
//        //        }
//        //        .frame(maxHeight: 300)
//        
//        //        ScrollView {
//        //            LazyVGrid(columns: COlumns, spacing: 20) {
//        //                ForEach(data, id: \.self) { item in
//        //                    Text(item) }
//        //            }
//        //            .padding(.horizontal)
//        //        }
//        //        .frame(maxHeight: 300)
//        
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: rows, alignment: .center) {
//                ForEach(items, id: \.self) { item in
//                    Image(systemName: "\(item).circle.fill")
//                        .font(.largeTitle)
//                }
//            }
//            .frame(height: 150)
//            
//            
//        }
//    }
//}
//#Preview {
//    sgsView10()
//}


struct GridStack<Content: View>: View {
    let Rows: Int
    let COLUmns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< Rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< COLUmns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
    init(Rows: Int, COLUmns: Int, @ViewBuilder content:
         @escaping (Int, Int) -> Content) {
        self.Rows = Rows
        self.COLUmns = COLUmns
        self.content = content
    }
}

// An example view putting GridStack into practice.
struct CView: View {
    var body: some View {
        GridStack(Rows: 4, COLUmns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
    }
}


#Preview {
    CView()
}
