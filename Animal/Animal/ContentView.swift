//
//  ContentView.swift
//  Animal
//
//  Created by Lara K on 05/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
     @StateObject private var vm = AnimalViewModel()

var body: some View {
    VStack {
        List(vm.allAnimal) { animal in
            Text(animal.name)
            Text(animal.description)
        }
        
        Button("Add Animal") {
            vm.addAnimal()
        }
        
        Button("Remove First") {
            vm.allAnimal.removeFirst()
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
