import SwiftUI

struct vl4: View {
    //MARK: return different view types
    var tossResult: some View {
        Group {
            if Bool.random() {
                Image("img1")
                    .resizable()
                    .scaledToFit()
            } else{
                Text("Better Luck next time")
                    .font(.title)
            }
        }
        .frame(width: 400, height: 300)
    }
    
    var body: some View {
        VStack {
            Text("coin flip")
                .font(.largeTitle)
            tossResult
        }
    }
}


#Preview {
    vl4()
}

/*
 If you haven’t heard of this concept, it effectively forces Swift to forget about what specific type is inside the AnyView, allowing them to look like they are the same thing. This has a performance cost, though, so don’t use it often.
 */
struct ContentView: View {
    var tossResult: some View {
        if Bool.random() {
            return AnyView(Image("img1").resizable().scaledToFit())
        } else {
            return AnyView(Text("Better luck next time").font(.title))
        }
    }
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)
            tossResult
                .frame(width: 400, height: 300)
        }
    }
}

#Preview {
    ContentView()
}


struct ContentView1: View {
    @ViewBuilder var tossResult: some View {
        if Bool.random() {
            Image("img1")
                .resizable()
                .scaledToFit()
        } else {
            Text("Better luck next time")
                .font(.title)
        }
    }
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)
            tossResult
                .frame(width: 400, height: 300)
        }
    }
}

#Preview {
    ContentView1()
}


struct TossResult: View {
   var body: some View {
      if Bool.random() {
         Image("img1")
            .resizable()
            .scaledToFit()
      } else {
         Text("Better luck next time")
            .font(.title)
} }
}
struct ContentView2: View {
   var body: some View {
      VStack {
         Text("Coin Flip")
            .font(.largeTitle)
         TossResult()
            .frame(width: 400, height: 300)
} }
}

#Preview {
    ContentView2()
}
