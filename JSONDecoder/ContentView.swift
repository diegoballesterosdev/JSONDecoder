//
//  ContentView.swift
//  JSONDecoder
//
//  Created by Diego Ballesteros on 09/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let dataType: [DataType] = Bundle.main.decode("jsonfile.json")
    
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(dataType) { dataType in
                    Section {
                        Text(dataType.id)
                    } header: {
                        Text(dataType.name)
                    }
                }
            }
            .navigationTitle("JSON")
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
