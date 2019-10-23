//
//  ModalView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/23.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    @State private var modalShowing = false
    
    var body: some View {
        Button(action: {
            self.modalShowing = true
        }) {
            Text("Show Modal")
        }.sheet(isPresented: $modalShowing) {
            ModalView2()
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}

struct ModalView2: View {
    @State private var modalShowing = false
    
    var body: some View {
        Text("Hello World")
    }
}
