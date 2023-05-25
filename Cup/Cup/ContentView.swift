//
//  ContentView.swift
//  Cup
//
//  Created by Lara K on 05/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = CupViewModel()

    var body: some View {
        VStack {
            List(vm.allCup) { cup in
                Text(cup.type)
                Text(cup.description)
            }
            
            Button("Add Cup") {
                vm.addCup()
            }
            
            Button("Shuffle") {
                vm.allCup.shuffle()
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
