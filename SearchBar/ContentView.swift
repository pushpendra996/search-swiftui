//
//  ContentView.swift
//  SearchBar
//
//  Created by Pushpendra on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let names : [String] = ["Dolly Kaur", "Pushpendra Saini", "Kohinoor Singh", "Dolat Ram", "Rahul", "Peter", "Joshap", "Tiget", "Salman Khan", "Akshya Kumar", "Hrithik Roshan", "Kartik Aaryan", "Arjun Kapoor"]
    
    @State private var searchText : String = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResluts, id: \.self) { name in
                    NavigationLink {
                        Text("Hey \(name), You are here")
                    } label: {
                        Text(name)
                    }
                }
            }
            .navigationTitle("Contacts")
        }.searchable(text: $searchText)
    }
    
    var searchResluts : [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
