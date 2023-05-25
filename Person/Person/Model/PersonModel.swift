//
//  PersonModel.swift
//  Person
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

struct  Person: Identifiable {
     var id = UUID()
     var name: String
     var description: String
     var count = 0
}
