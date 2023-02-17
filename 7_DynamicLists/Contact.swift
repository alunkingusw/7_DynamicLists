//
//  Contact.swift
//  7_DynamicLists
//
//  Created by Alun King on 17/02/2023.
//

import Foundation
class Contact: Identifiable{
    var name:String
    var number:String
    let id = UUID()
    
    init(name:String, number:String){
        self.name = name
        self.number = number
    }
    
}
