//
//  CircleView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/22.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
