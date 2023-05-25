//
//  ContentView.swift
//  Fruit
//
//  Created by Lara K on 05/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = FruitViewModel()

    var body: some View {
        VStack {
            List(vm.allFruit) { car in
                Text(car.type)
                Text(car.description)
            }
            
            Button("Add Fruit") {
                vm.addFruit()
            }
            
            Button("Remove All Fruit") {
                vm.allFruit.removeAll()
            }
                       
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
