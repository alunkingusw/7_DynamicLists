//
//  ContentView.swift
//  6_Lists
//
//  Created by Alun King on 08/02/2023.
//

import SwiftUI

struct PhoneEntry: View , Identifiable{
    let name: String
    let number: String
    let id = UUID()

    var body: some View {
        VStack{
            Text("Name: \(name)")
            Text("Number: \(number)")
        }.padding(2.0)
    }
}

struct ContentView: View {
    var contacts = [PhoneEntry(name: "Alice", number:"07123456789"),
                    PhoneEntry(name: "Tamino", number:"07123456789"),
                    PhoneEntry(name: "Pamina", number:"07123456789")]
    var body: some View {
        List (contacts){ contact in
            PhoneEntry(name:contact.name, number:contact.number)
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
