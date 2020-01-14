//
//  ScratchView.swift
//  MySwiftUI
//
//  Created by Steve Ham on 2019/12/21.
//  Copyright © 2019 Brain Tools. All rights reserved.
//

import SwiftUI

struct ScratchView: View {
    
    @State var array = [0,1,2]
    @State var selection = 0

    var body: some View {
        VStack {
            Picker("", selection: self.$selection) {
                ForEach(self.array, id : \.self) { i in
                    Text(String(i))
                }
            }.id(self.array)

            Button(action: {
                self.array.append(self.array.count)
            }){
                Text("Add me: " + String(self.array.count))
            }
        }
    }
//    @State private var calendars = ["1", "2"]
//
//    @State private var selectedCalendar = 0
//
//    @State private var refresh = false
//
//    var body: some View {
//        VStack {
//            Button("Test") {
//                var cs = self.calendars
//                cs.append("3")
//                self.calendars = cs
//                print("hsteve self.calendars \(self.calendars)")
//                //self.refresh.toggle()
//            }
//            if refresh {
//                Picker(calendars[selectedCalendar], selection: $selectedCalendar) {
//                    ForEach(calendars, id: \.self) {
//                        Text($0).tag(self.calendars.firstIndex(of: $0)!)
//                    }
//                }.pickerStyle(WheelPickerStyle())
//            } else {
//                Picker(calendars[selectedCalendar], selection: $selectedCalendar) {
//                    ForEach(calendars, id: \.self) {
//                        Text($0).tag(self.calendars.firstIndex(of: $0)!)
//                    }
//                }.pickerStyle(WheelPickerStyle())
//            }
//        }
//    }
}

struct ScratchView_Previews: PreviewProvider {
    static var previews: some View {
        ScratchView()
    }
}
