//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Personal on 21/8/23.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .center, spacing: 20) {
                    
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    FruitNutrientsView(fruit: fruit)
                    
                    
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
            }
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
