import SwiftUI

struct LView14: View {
    /*
     How to enable pull to refresh
     */
    @State private var news = [
        NewsItem(id: 0, title: "Want the latest news?", strap:
                    "Pull to refresh!")
    ]
    var body: some View {
        //        NavigationView {
        //            List(1..<100) { row in
        //                Text("Row \(row)")
        //            }
        //            .refreshable {
        //                print("Do your refresh work here")
        //            }
        //        }
        
        NavigationView {
            List(news) { item in
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.headline)
                    Text(item.strap)
                        .foregroundColor(.secondary)
                }
            }
            .refreshable {
                do {
                    // Fetch and decode JSON into news items
                    let url = URL(string:
                                    "https://www.hackingwithswift.com/samples/news-1.json")!
                    let (data, _) = try await
                    URLSession.shared.data(from: url)
                    
                    news = try JSONDecoder().decode([NewsItem].self,  from: data)
                } catch {
                    // Something went wrong; clear the news
                    news = []
                }
            }
        }
    }
}

    
#Preview {
    LView14()
}

struct NewsItem: Decodable, Identifiable {
    let id: Int
    let title: String
    let strap: String
}
