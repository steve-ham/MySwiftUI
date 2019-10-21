//
//  TabbedView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/18.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct TabbedView: View {
    
    var body: some View {
        TabView {
            Text("First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("Third Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
