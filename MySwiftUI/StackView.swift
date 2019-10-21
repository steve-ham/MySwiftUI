//
//  StackView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            Text("Top Text")
                .padding(.bottom)
            HStack {
                Text("LeftLeftLeftLeftLeftLeftLeft")
                Spacer()
                Text("RightRightRightRightRightRight")
                .layoutPriority(1) // Default 0
            }
        }
    }
}

// ZStack

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
