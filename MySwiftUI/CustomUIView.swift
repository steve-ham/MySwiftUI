//
//  CustomUIView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/18.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct CustomUIView: View {
    var body: some View {
        BlueView()
            .frame(width: 200, height: 200)
//            .padding()
//            .background(Color.purple)
//            .clipShape(Circle())
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomUIView()
    }
}

struct BlueView: UIViewRepresentable {
    func makeUIView(context: Context) -> MyBlueView {
        MyBlueView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MyBlueView, context: Context) {
        
    }
    
}

class MyBlueView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .blue
    }
}
