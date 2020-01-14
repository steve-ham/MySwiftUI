//
//  ImageView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/12/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Form {
            Section {
                HStack {
                    Spacer()
                    Button(action: {
                        print("tap")
                    }) {
                        Image("turtlerock")
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
