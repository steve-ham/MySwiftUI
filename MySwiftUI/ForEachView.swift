//
//  ForEachView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/10/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct ForEachView: View {
    
    private var services = ["Taxi", "Driver", "Parking"]
    
    var body: some View {
        VStack {
            Text("Services")
                .font(.largeTitle)
                .padding(.top)
            ForEach(services, id: \.self) { service in
                Text(service)
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
