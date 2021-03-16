//
//  AuthView.swift
//  BenitTest
//
//  Created by Jayzer on 16/03/2021.
//

import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image("signuptree")
                        .resizable()
                        .frame(width: 125, height: 550)
                        .scaledToFit()
                }
            }
            .offset(y: 30)
            
            VStack() {
                Text("Sign Up")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                    
                VStack(spacing: 18) {
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            .padding(.horizontal, 10)
                        TextField("Username", text: $username)
                    }
                    .padding()
                    .background(Color("EFF0EF"))
                    .cornerRadius(61)
                    
                    HStack {
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            .padding(.horizontal, 10)
                        TextField("Email", text: $email)
                    }
                    .padding()
                    .background(Color("EFF0EF"))
                    .cornerRadius(61)
                    
                    HStack {
                        Image(systemName: "lock.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            .padding(.horizontal, 10)
                        SecureField("Password", text: $password)
                    }
                    .padding()
                    .background(Color("EFF0EF"))
                    .cornerRadius(61)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Sign Up")
                            .font(.headline)
                            .frame(width: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("FF854F"))
                            .cornerRadius(61)
                    })
                    .padding()
                    
                    Text("Or sign up with social platform")
                        .font(Font.custom("Roboto-Thin", size: 20))
                        .padding(.top, 5)
                        .opacity(0.5)
                    
                    HStack {
                        Image("ggicon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Image("fbicon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding(.horizontal, 60.0)
                Spacer()
                NavigationLink(destination: SignInView()) {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.primary)
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color("FF854F"))
                    }
                }
                .padding()
            }
        }
    }
}

struct SignInView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Image("signintree")
                        .resizable()
                        .frame(width: 125, height: 550)
                        .scaledToFit()
                    Spacer()
                }
            }
            .offset(y: 30)
            
            VStack() {
                Text("Sign In")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                    
                VStack(spacing: 18) {
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            .padding(.horizontal, 10)
                        TextField("Username", text: $username)
                    }
                    .padding()
                    .background(Color("EFF0EF"))
                    .cornerRadius(61)
                    
                    HStack {
                        Image(systemName: "lock.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            .padding(.horizontal, 10)
                        SecureField("Password", text: $password)
                    }
                    .padding()
                    .background(Color("EFF0EF"))
                    .cornerRadius(61)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Sign In")
                            .font(.headline)
                            .frame(width: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("FF854F"))
                            .cornerRadius(61)
                    })
                    .padding()
                    
                    Text("Or sign up with social platform")
                        .font(Font.custom("Roboto-Thin", size: 20))
                        .padding(.top, 5)
                        .opacity(0.5)
                    
                    HStack {
                        Image("ggicon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Image("fbicon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding(.horizontal, 60.0)
                Spacer()
                NavigationLink(destination: SignUpView()) {
                    HStack {
                        Text("You don't have an account yet?")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.primary)
                        Text("Sign Up")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color("FF854F"))
                    }
                }
                .padding()
            }
        }
    }
}

struct AuthView: View {
    var body: some View {
        NavigationView {
            SignUpView()
        }
//        SignUpView()
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
