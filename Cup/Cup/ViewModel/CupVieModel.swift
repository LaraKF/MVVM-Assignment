//
//  CupVieModel.swift
//  Cup
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

extension ContentView {
    @MainActor class CupViewModel: ObservableObject {
       @Published var count = 0
        @Published var allCup: [Cup] = []
        
        func Increament() {
            count += 1
        }
        
        func addCup() {
            let randomCup = ["Cartoon cup", "Glass cup","Cork cup"]
            let cup = randomCup.randomElement()!

            let newCup = Cup(type : cup, description: "the select Cup is number \(allCup.count+1)!")
            
                allCup.insert(newCup, at: 0)
        }
        
    }
}
