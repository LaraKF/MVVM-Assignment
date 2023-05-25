//
//  FruitModel.swift
//  Fruit
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

struct  Fruit: Identifiable {
     var id = UUID()
     var type: String
     var description: String
     var count = 0
}
