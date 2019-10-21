//
//  LabelView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
            .frame(minWidth: 0, maxWidth: .infinity,
                   minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
