import SwiftUI

struct sgsView6: View {
    /*
     //MARK: automatically switch
     between HStack and VStack
     based on size class
     */
    
    var body: some View {
        AdaptiveStack {
                 Text("Horizontal when there's lots of space")
                 Text("but")
                 Text("Vertical when space is restricted")
        }
    }
}

#Preview {
    sgsView6()
}


struct AdaptiveStack<Content: View>: View {
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    let horizontalAlignment: HorizontalAlignment
    let verticalAlignment: VerticalAlignment
    let spacing: CGFloat?
    let content: () -> Content
    
    init(
        horizontalAlignment: HorizontalAlignment = .center,
        verticalAlignment: VerticalAlignment = .center,
        spacing:
        CGFloat? = nil,
        @ViewBuilder content: @escaping () -> Content
    )
    {
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
        self.spacing = spacing
        self.content = content
    }
    
    var body: some View {
        Group {
            if sizeClass == .compact {
                VStack(
                    alignment: horizontalAlignment,
                    spacing:
                        spacing,
                    content: content
                )
            } else {
                HStack(
                    alignment: verticalAlignment,
                    spacing:
                        spacing,
                    content: content
                )
            }
        }
    }
}


