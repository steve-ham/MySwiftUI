//
//  AnimationView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/18.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var showDetail = false
    
    var body: some View {
        // Example 1
//        Button(action: {
//            self.showDetail.toggle()
//        }) {
//            Image(systemName: "chevron.right.circle")
//                .rotationEffect(.degrees(showDetail ? 90 : 0))
//                .scaleEffect(showDetail ? 1.5 : 1)
//                .animation(.spring())
//        }
        
        // Example 2
        Button(action: {
            withAnimation(.easeInOut(duration: 1)) {
                self.showDetail.toggle()
            }
        }) {
            Image(systemName: "chevron.right.circle")
                .rotationEffect(.degrees(showDetail ? 90 : 0))
                .scaleEffect(showDetail ? 1.5 : 1)
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
