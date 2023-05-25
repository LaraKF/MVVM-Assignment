//
//  AnimalViewModel.swift
//  Animal
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

@MainActor class AnimalViewModel: ObservableObject {
   @Published var count = 0
    @Published var allAnimal: [Animal] = []
    
    func Increament() {
        count += 1
    }
    
    func addAnimal() {
        let randomAnimal = ["Horse", "Cat","Dog", "Rabbit"]
        let animal = randomAnimal.randomElement()!

        let newAnimal = Animal(name : animal, description: "the select Animal is number \(allAnimal.count+1)!")
        
            allAnimal.insert(newAnimal, at: 0)
    }
    
}

