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
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct EnvironmentObjectView2_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView2()
    }
}
