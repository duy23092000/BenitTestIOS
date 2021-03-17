//
//  GetStartedView.swift
//  BenitTest
//
//  Created by Jayzer on 17/03/2021.
//

import SwiftUI

struct GetStartedView: View {
    @State var isActive:Bool = false
    @State var isSignUp:Bool = false
    
    var body: some View {
        ZStack {
            if (isActive) {
                AuthView()
                    .transition(.move(edge: .top))
                    .animation(.linear(duration: 1.5))
            } else if (isSignUp) {
                SignInView()
                    .transition(.move(edge: .top))
                    .animation(.linear(duration: 1.5))
            } else {
                VStack(alignment: .center) {
                    Image("getstartednen")
                        .resizable()
                        .scaledToFill()
                    Spacer()
                }
                
                VStack(alignment: .center) {
                    Spacer()
                    Image("getstarted")
                        .resizable()
                        .scaledToFit()
                }
                
                VStack(alignment: .center, spacing: 20.0) {
                    Text("Do you need to help to learn a new language?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                    Text("A different language is a different vision of life")
                        .font(.headline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal, 95.0)
                        .opacity(0.3)
                    
                    Button(action: {
                            withAnimation{
                                self.isActive.toggle()}}, label: {
                        Text("Get Started")
                            .font(.title)
                            .frame(width: 200, height: 25.0)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("FF854F"))
                            .cornerRadius(61)
                    })
//                    Text("I already have an account")
//                        .font(.title3)
//                        .foregroundColor(Color("FF854F"))
                    Button(action: {
                            withAnimation{
                                self.isSignUp.toggle()}}, label: {
                        Text("I already have an account")
                            .font(.title3)
                            .foregroundColor(Color("FF854F"))
                    })
                    
                }
                .padding(.horizontal, 26.0)
                .offset(y: -180)
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
