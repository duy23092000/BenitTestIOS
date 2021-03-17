//
//  LandingView.swift
//  BenitTest
//
//  Created by Jayzer on 17/03/2021.
//

import SwiftUI

struct LandingView: View {
    @State var isActive:Bool = false
    
    var body: some View {
        ZStack {
            if (self.isActive) {
                GetStartedView()
                    .transition(.move(edge: .trailing))
                    .animation(.linear(duration: 1.0))
            } else {
                ZStack {
                    Image("nenlanding")
                        .resizable()
                        .scaledToFill()
                    Image("logo")
                        .resizable()
                        .frame(width: 300.0, height: 60.0)
                        .scaledToFit()
                        .offset(y: 0)
                    Spacer()
                }
            }
        }
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation() {
                    self.isActive.toggle()
                }
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
