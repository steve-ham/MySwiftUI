//
//  EmptyView.swift
//  MySwiftUI
//
//  Created by steve.ham on 2020/01/14.
//  Copyright © 2020 Brain Tools. All rights reserved.
//

import SwiftUI

struct BTEmptyView: View {
    var body: some View {
        EmptyView()
            .frame(width: 200, height: 200)
            .background(Color.blue)
    }
}

struct BTEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
