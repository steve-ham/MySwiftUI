//
//  ObservableObjectView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/17.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
}

class PeopleDatabase: ObservableObject {
    
    @Published var people: [Person] = [Person(name: "Ann"), Person(name: "Steve"), Person(name: "Jack")]
}

struct ObservableObjectView: View {
    
    @ObservedObject var peopleDatabase = PeopleDatabase()
    
    var body: some View {
        List(peopleDatabase.people) { person in
            Text(person.name)
        }
        .navigationBarTitle(Text("ObservableObjectView"), displayMode: .inline)
        .navigationBarItems(trailing:
            Button(action: shuffle) {
                Text("Shuffle")
            }
        )
    }
    
    func shuffle() {
        print("hsteve shuffle")
        peopleDatabase.people.shuffle()
    }
}

struct ObservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectView()
    }
}
