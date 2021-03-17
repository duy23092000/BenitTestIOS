//
//  ContentView.swift
//  BenitTest
//
//  Created by Jayzer Nguyen on 15/3/21.
//

import SwiftUI

struct ContentView: View {
    @State var isActive:Bool = false
    
    var body: some View {
        LandingView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
