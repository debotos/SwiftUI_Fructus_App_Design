//
//  Onboarding.swift
//  Fructus
//
//  Created by Personal on 16/8/23.
//

import SwiftUI

struct Onboarding: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .edgesIgnoringSafeArea(.all)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
