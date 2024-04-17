

import SwiftUI

struct LView16: View {
    /*
     How to add a search bar to filter your data
     */
    @State private var searchText = ""
    let names = ["Holly", "Josh", "Rhonda", "Ted"]
    
    var body: some View {
//                NavigationView {
//                         Text("Searching for \(searchText)")
//                            //.searchable(text: $searchText)
//                        .searchable(text: $searchText, prompt: "Look for something")
//                            .navigationTitle("Searchable Example")
//                }
//        
//                NavigationView {
//                        List {
//                            ForEach(searchResults, id: \.self) { name in
//                                NavigationLink(destination: Text(name)) {
//                                    Text(name)
//                                }
//                            }
//                        }
//                        .searchable(text: $searchText)
//                        .navigationTitle("Contacts")
//               }
        
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink(destination: Text(name)) {
                        Text(name)
                    }
                }
            }
            .searchable(text: $searchText) {
                ForEach(searchResults, id: \.self) { result in
                    Text("Are you looking for \(result)?")
                        .searchCompletion(result)
                }
                
            }
            .navigationTitle("Contacts")
        }
    }
        
        var searchResults: [String] {
            if searchText.isEmpty {
                return names
            } else {
                return names.filter { $0.contains(searchText) }
            }
        }
    }
    
    #Preview {
        LView16()
    }
