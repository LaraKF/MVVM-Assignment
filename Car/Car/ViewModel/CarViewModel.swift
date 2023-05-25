//
//  CarNewModel.swift
//  Car
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

extension ContentView {
    @MainActor class CarViewModel: ObservableObject {
       @Published var count = 0
        @Published var allCar: [Car] = []
        
        func Increament() {
            count += 1
        }
        
        func addCar() {
            let randomCar = ["Toyota", "Mazda","Bentley", "GMC", "BMW"]
            let car = randomCar.randomElement()!
//            if let variableName = resultFramAPI {
//
//            }
            let newCar = Car(model : car, description: "the select car is number \(allCar.count+1)!")
            
           // withAnimation {
                allCar.insert(newCar, at: 0)
           // }
        }
        
    }
}
