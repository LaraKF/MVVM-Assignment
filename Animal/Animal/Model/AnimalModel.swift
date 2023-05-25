//
//  AnimalModel.swift
//  Animal
//
//  Created by Lara K on 05/11/1444 AH.
//

import Foundation

struct  Animal: Identifiable {
     var id = UUID()
     var name: String
     var description: String
     var count = 0
}
