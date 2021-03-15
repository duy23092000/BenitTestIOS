//
//  SignUpView.swift
//  BenitTest
//
//  Created by Jayzer Nguyen on 15/3/21.
//

import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack() {
            HStack {
                Text("Sign In")
                Image(systemName: "arrow.right")
            }
            .offset(x: 140,y: -245)
            .font(.title2)
            .foregroundColor(Color("FF854F"))
            
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
                TextField("Password", text: $password)
            }
            Button("Sign In") {}
            Text("Or sign up with social platform")
            HStack {
                Image("ggicon")
                Image("fbicon")
            }
        }.background(Image("signuptree").resizable().scaledToFill().clipped())
        .edgesIgnoringSafeArea([.top])
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
