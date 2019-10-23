//
//  StateView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/17.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct StateView: View {
    @State private var isEnabled = false
    
    var body: some View {
        VStack {
            BindingView(isEnabled: $isEnabled)
            Toggle(isOn: $isEnabled) {
                Text("Toggle")
            }
        }.navigationBarTitle("StateView")
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}

struct BindingView: View {
    @Binding var isEnabled: Bool
    var body: some View {
        Text(isEnabled ? "Enabled" : "Not Enabled")
    }
}
