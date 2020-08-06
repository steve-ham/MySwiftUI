//
//  TextFieldView.swift
//  MySwiftUI
//
//  Created by steve.ham on 2020/08/06.
//  Copyright © 2020 Brain Tools. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @State private var string = ""
    var body: some View {
        TextField("Hello", text: $string)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
