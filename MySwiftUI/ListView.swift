//
//  ListView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var name: String
}

struct ListView: View {
    let users = [User(name: "Taylor"),
                 User(name: "Adele"),
                 User(name: "Justin")]
    var body: some View {
        List {
            Section(header: Text("Header1")) {
                ForEach(users) { user in
                    NavigationLink(destination: Text("\(user.name)")) {
                        Text("\(user.name)")
                            .font(.title)
                    }
                }
            }
            Section(header: Text("Header2")) {
                ForEach(users) { user in
                    NavigationLink(destination: Text("\(user.name)")) {
                        Text("\(user.name)")
                            .font(.title)
                    }
                }
            }
        }
        .navigationBarTitle("ListView")
        .listStyle(InsetGroupedListStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
