import SwiftUI

struct LView9: View {
    /*
     How to create expanding lists
     */
    let items: [Bookmark] = [.example1, .example2, .example3]
    var body: some View {
        Text("create expanding lists")
            .font(.title)
        List(items, children: \.items) { row in
                 Image(systemName: row.icon)
                 Text(row.name)
              }
    }
}

#Preview {
    LView9()
}


struct Bookmark: Identifiable {
   let id = UUID()
   let name: String
   let icon: String
   var items: [Bookmark]?
   // some example websites
    static let apple = Bookmark(
        name: "Apple",
        icon: "1.circle"
    )
    static let bbc = Bookmark(
        name: "BBC",
        icon:
            "square.and.pencil"
    )
    static let swift = Bookmark(
        name: "Swift",
        icon:
            "bolt.fill"
    )
    static let twitter = Bookmark(
        name: "Twitter",
        icon: "mic"
    )
   // some example groups
    static let example1 = Bookmark(
        name: "Favorites",
        icon:
            "star",
        items: [
            Bookmark.apple,
            Bookmark.bbc,
            Bookmark.swift,
            Bookmark.twitter
        ]
    )
    static let example2 = Bookmark(
        name: "Recent",
        icon:
            "timer",
        items: [
            Bookmark.apple,
            Bookmark.bbc,
            Bookmark.swift,
            Bookmark.twitter
        ]
    )
    static let example3 = Bookmark(
        name: "Recommended",
        icon:
            "hand.thumbsup",
        items: [
            Bookmark.apple,
            Bookmark.bbc,
            Bookmark.swift,
            Bookmark.twitter
        ]
    )
   }
