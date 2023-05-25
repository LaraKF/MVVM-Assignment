//
//  FruitViewModel.swift
//  Fruit
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

extension ContentView {
    @MainActor class FruitViewModel: ObservableObject {
       @Published var count = 0
        @Published var allFruit: [Fruit] = []
        
        func Increament() {
            count += 1
        }
        
        func addFruit() {
            let randomFruit = ["Banana", "Lemon","Apple", "Orange", "Mango"]
            let fruit = randomFruit.randomElement()!

            let newFruit = Fruit(type : fruit, description: "the select Fruit is number \(allFruit.count+1)!")
            
                allFruit.insert(newFruit, at: 0)
        }
        
    }
}
