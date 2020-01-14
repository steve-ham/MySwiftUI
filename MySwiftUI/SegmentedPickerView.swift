//
//  SegmentedPickerView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/12/22.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI
import Combine

class IndexManager: ObservableObject {
    @Published var index = 0 {
        didSet {
            publisher.send(index)
        }
    }
    let publisher = PassthroughSubject<Int, Never>()
}

struct SegmentedPickerView: View {
    
    private let strings = ["a", "b", "c"]
    @ObservedObject private var indexManager = IndexManager()
    
    var body: some View {
        Picker("", selection: $indexManager.index) {
            ForEach(strings, id: \.self) {
                Text($0).tag(self.strings.firstIndex(of: $0)!)
            }
        }.pickerStyle(SegmentedPickerStyle())
            .onReceive(indexManager.publisher) { int in
                print("onReceive \(int)")
        }
    }
}

struct SegmentedPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPickerView()
    }
}
