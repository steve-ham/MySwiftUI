//
//  ImagePickerView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/12/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct ImagePickerView: View {
    
    @State private var showingImagePicker = false
    @State private var uiImage: UIImage?
    
    var body: some View {
        VStack {
            Button("Show Image Picker") {
                self.showingImagePicker = true
            }.sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: self.$uiImage)
            }
            uiImage.map {
                Image(uiImage: $0)
                    .resizable().frame(width: 200, height: 200)
            }
        }
        
    }
    
    func loadImage() {
//        guard let uiImage = uiImage else { return }
//        image = Image(uiImage: uiImage)
    }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
