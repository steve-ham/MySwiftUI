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
            Text("Taxi")
            Text("Driver")
            Text("Parking")
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
