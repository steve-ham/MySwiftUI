//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/17.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: StateView()) {
                    Text("StateView")
                }
                NavigationLink(destination: ObservableObjectView()) {
                    Text("ObservableObjectView")
                }
                NavigationLink(destination: CustomView()) {
                    Text("CustomView")
                }
                NavigationLink(destination: FormView()) {
                    Text("FormView")
                }
            }
            .navigationBarTitle(Text("MySwiftUI"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
