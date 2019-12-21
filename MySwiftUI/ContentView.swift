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
                Section(header: Text("Section 1")) {
                    NavigationLink(destination: StateView()) {
                        Text("StateView")
                    }
                    NavigationLink(destination: ObservableObjectView()) {
                        Text("ObservableObjectView")
                    }
                    NavigationLink(destination: EnvironmentObjectView().environmentObject(PeopleDatabase())) {
                        Text("EnvironmentObjectView")
                    }
                    NavigationLink(destination: CustomUIView()) {
                        Text("CustomUIView")
                    }
                    NavigationLink(destination: ListView()) {
                        Text("ListView")
                    }
                }
                Section(header: Text("Section 2")) {
                    NavigationLink(destination: FormView()) {
                        Text("FormView")
                    }
                    NavigationLink(destination: TabbedView()) {
                        Text("TabbedView")
                    }
                    NavigationLink(destination: AnimationView()) {
                        Text("AnimationView")
                    }
                    NavigationLink(destination: StackView()) {
                        Text("StackView")
                    }
                    NavigationLink(destination: LabelView()) {
                        Text("LabelView")
                    }
                }
                Section(header: Text("Section 3")) {
                    NavigationLink(destination: ForEachView()) {
                        Text("ForEachView")
                    }
                    NavigationLink(destination: CircleView()) {
                        Text("CircleView")
                    }
                    NavigationLink(destination: AlertView()) {
                        Text("AlertView")
                    }
                    NavigationLink(destination: ModalView()) {
                        Text("ModalView")
                    }
                    NavigationLink(destination: ImagePickerView()) {
                        Text("ImagePickerView")
                    }
                }
            }
            .navigationBarTitle(Text("MySwiftUI"), displayMode: .inline).listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
