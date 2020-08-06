//
//  EnvironmentSheetView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2020/03/04.
//  Copyright © 2020 Brain Tools. All rights reserved.
//

import SwiftUI

struct EnvironmentSheetView: View {
    @EnvironmentObject var settings: Settings
    var body: some View {
        Text("\(1)")
    }
}

struct EnvironmentSheetView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentSheetView()
    }
}
