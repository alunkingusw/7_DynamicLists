//
//  PhoneEntryDetail.swift
//  7_DynamicLists
//
//  Created by Alun King on 17/02/2023.
//

import SwiftUI

struct PhoneEntryDetail: View {
    var contact:Contact

    var body: some View {
        VStack{
            Text("Name: \(contact.name)")
            Text("Number: \(contact.number)")
        }.padding(2.0)
    }
}

struct PhoneEntryDetail_Previews: PreviewProvider {
    static var previews: some View {
        PhoneEntryDetail(contact:Contact(name:"Example", number:"Example"))
    }
}
