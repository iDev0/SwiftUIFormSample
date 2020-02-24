//
//  ContentView.swift
//  FormSample
//
//  Created by MakeItSimple on 2020/02/25.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var airplanMode = false
    @State var selectedMode = 0
    
    var appleDevices = ["iPhone", "iMac", "iPad"]
        
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("일반 셋팅")) {
                    Toggle(isOn: $airplanMode) {
                        Text("비행기 모드")
                        Image(systemName: "airplane")
                    }
                    
                    Picker(selection: $selectedMode, label: Text("애플 디바이스 선택")) {
                        ForEach(0 ..< appleDevices.count) {
                            Text(self.appleDevices[$0])
                        }
                    }
                }
                
                Section(header: Text("더 보기")) {
                    
                    HStack {
                        Text("내 디바이스")
                        Spacer()
                        Text("iPhone XS")
                    }
                    
                    HStack {
                        Text("소프트웨어 버전")
                        Spacer()
                        Text("1.11.1")
                    }
                }
            }.navigationBarTitle("설정")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
