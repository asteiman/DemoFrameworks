//
//  ContentView.swift
//  DemoFrameworks
//
//  Created by Alan Steiman on 22/04/2020.
//  Copyright © 2020 Alan Steiman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var colorKit: ColorKit
    
    var body: some View {
        Text("Hello, World!")
            .foregroundColor(Color(colorKit.primaryColor()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
