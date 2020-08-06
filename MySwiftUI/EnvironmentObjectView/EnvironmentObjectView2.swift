//
//  EnvironmentObjectView2.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct EnvironmentObjectView2: View {
    @EnvironmentObject var settings: Settings
    @State var showingSheet = false
    var body: some View {
        Button("Show") {
            self.showingSheet = true
        }.sheet(isPresented: $showingSheet) {
            EnvironmentSheetView()
        }
    }
}

struct EnvironmentObjectView2_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView2()
    }
}
