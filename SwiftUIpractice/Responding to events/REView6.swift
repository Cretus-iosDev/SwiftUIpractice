import SwiftUI

struct REView6: View {
//mark: How to run an asynchronous task when a view is shown
@State private var messages = [Message]()

let sites = ["google.com",
             "swift.org"]

    var body: some View {
//                NavigationView {
//                    List(messages) { message in
//                        VStack(alignment: .leading) {
//                            Text(message.from)
//                                .font(.headline)
//                            Text(message.text)
//                        }
//                    }
//                    .navigationTitle("Inbox")
//                }
//                .task {
//                    do {
//                        let url = URL(string: "https://www.hackingwithswift.com/samples/messages.json")!
//                        let (data, _) = try await
//                        URLSession.shared.data(from: url)
//                        messages = try JSONDecoder().decode([Message].self,
//                                                            from: data)
//                    } catch {
//                        messages = []
//                    }
//                }
        NavigationView {
            List(sites, id: \.self) { site in
                NavigationLink(site) {
                    SourceViewer(site: site)
                }
            }
            .navigationTitle("View Source")
        }
    }
}

#Preview {
    REView6()
}

struct Message: Decodable, Identifiable {
    let id: Int
    let from: String
    let text: String
}


struct SourceViewer: View {
    let site: String
    @State private var sourceCode = "Loading..."
    var body: some View {
        ScrollView {
            Text(sourceCode)
                .font(.system(.body, design: .monospaced))
        }
        .task {
            guard let url = URL(string: "https://\(site)") else {
                return
            }
            do {
                let (data, _) = try await
                URLSession.shared.data(from: url)
                sourceCode = String(decoding: data, as:
                                        UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines)
            } catch {
                sourceCode = "Failed to fetch site."
            }
        }
    }
}
