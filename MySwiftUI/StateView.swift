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
            Text(isEnabled ? "Enabled" : "Not Enabled")
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
