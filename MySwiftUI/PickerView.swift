//
//  PickerView.swift
//  MySwiftUI
//
//  Created by steve.ham on 2020/01/14.
//  Copyright © 2020 Brain Tools. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    @State private var currencyCode: String = ""
    var codes: [String] = ["EUR", "GBP", "USD"]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $currencyCode, label: Text("Currency")) {
                        // ID is a String ----v
                        ForEach(codes, id: \.self) { (string: String) in
                            Text(string)
                        }
                    }
                }
            }
        }.onAppear(perform: onAppear)
    }
    
    private func onAppear() {
        currencyCode = codes[1]
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
