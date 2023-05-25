//
//  ContentView.swift
//  Car
//
//  Created by Lara K on 05/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = CarViewModel()

    var body: some View {
        VStack {
            List(vm.allCar) { car in
                Text(car.model)
                Text(car.description)
            }
            
            Button("Add Car") {
                vm.addCar()
            }
            
            .listStyle(.plain)
           
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
