//
//  ContentView.swift
//  Person
//
//  Created by Lara K on 05/11/1444 AH.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var vm = PersonViewModel()

    var body: some View {
        VStack {
            List(vm.allPerson) { person in
                Text(person.name)
                Text(person.description)
            }
            
            Button("Add Person") {
                vm.addPerson()
            }
            
            Button("Remove Last") {
                vm.allPerson.removeLast()
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
