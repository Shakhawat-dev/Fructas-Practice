//
//  FruitDetailsView.swift
//  Fructas-Practice (iOS)
//
//  Created by Shakhawat Hossain Shahin on 9/6/21.
//

import SwiftUI

struct FruitDetailsView: View {
    // MARK: - PROPERTIES
    let fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENT
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading )
                        
                        // LINK
                        
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATIONVIEW
        
    }
}

// MARK: - PREVIEW
struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
    }
}
