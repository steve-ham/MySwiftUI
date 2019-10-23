//
//  AlertView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/22.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct AlertView: View {
    @State private var showingAlert = false
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Button")
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("Title"), message: Text("Message"), dismissButton: .default(Text("OK")))
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
