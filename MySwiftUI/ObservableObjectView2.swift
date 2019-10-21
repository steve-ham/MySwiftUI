//
//  ObservableObjectView2.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct ObservableObjectView2: View {
    @ObservedObject var peopleDatabase: PeopleDatabase
    
    var body: some View {
        List(peopleDatabase.people) { person in
            Text(person.name)
        }.foregroundColor(.green)
    }
}

struct ObservableObjectView2_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectView2(peopleDatabase: PeopleDatabase())
    }
}
