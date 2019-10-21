//
//  EnvironmentObjectView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct EnvironmentObjectView: View {
    
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        VStack {
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase Score")
            }.padding(.bottom)
            NavigationLink(destination: EnvironmentObjectView2()) {
                Text("EnvironmentObjectView2")
            }
        }
    }
}

struct EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
