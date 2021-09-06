//
//  ContentView.swift
//  Shared
//
//  Created by Shakhawat Hossain Shahin on 7/6/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)) {
                        FruitsRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                        
                }
            }.navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
