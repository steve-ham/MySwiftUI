//
//  FormView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/18.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct FormView: View {
    var body: some View {
        Form {
            Section {
                Text("Taxi")
                Text("Driver")
                Text("Parking")
            }
            Section {
                Button("Delete") {
                    print("hsteve delete")
                }
                .foregroundColor(Color.red)
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
