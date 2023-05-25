//
//  PersonViewModel.swift
//  Person
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

@MainActor class PersonViewModel: ObservableObject {
   @Published var count = 0
    @Published var allPerson: [Person] = []
    
    func Increament() {
        count += 1
    }
    
    func addPerson() {
        let randomPerson = ["Lara", "Nora","Alanoud"]
        let person = randomPerson.randomElement()!

        let newPerson = Person(name : person, description: "the select Person is number \(allPerson.count+1)!")
        
            allPerson.insert(newPerson, at: 0)
    }
    
}

