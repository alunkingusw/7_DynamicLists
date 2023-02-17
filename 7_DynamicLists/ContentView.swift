//
//  ContentView.swift
//  6_Lists
//
//  Created by Alun King on 08/02/2023.
//

import SwiftUI



struct ContentView: View {
    @State var showView = false
    var contacts = [Contact(name: "Alice", number:"07123456789"),
                    Contact(name: "Tamino", number:"07123456789"),
                   Contact(name: "Pamina", number:"07123456789")]
    var body: some View {
        NavigationView{
            List (contacts){ contact in
                NavigationLink{
                    PhoneEntryDetail(contact:contact)
                } label:{PhoneEntryRow(contact:contact)
                }
            }
            .navigationTitle("Contacts")
            
            .toolbar{
                Button("+"){
                    showView.toggle()
                }.sheet(isPresented:$showView){
                    PhoneEntryDetail(contact:Contact(name:"Example", number:"Example"))
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
