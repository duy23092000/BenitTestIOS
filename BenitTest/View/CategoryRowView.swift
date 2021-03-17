//
//  CategoryRowView.swift
//  BenitTest
//
//  Created by Jayzer on 17/03/2021.
//

import SwiftUI

struct CategoryRowView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Language")
                        .font(.headline)
                        .padding(.leading, 30)
                        .padding(.top, 5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 25) {
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("DEEBE9"))
                                        .frame(width: 200, height: 100)
                                    VStack(alignment: .center) {
                                        Image("getstarted")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 160.0, height: 100.0)
                                        Text("English")
                                            .foregroundColor(Color("808080"))
                                            .fontWeight(.medium)
                                        Spacer()
                                    }
                                }
                            }
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("6F4975"))
                                        .frame(width: 200, height: 100)
                                    VStack(alignment: .center) {
                                        Image("chinese")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 160.0, height: 100.0)
                                        Text("Chinese")
                                            .foregroundColor(.white)
                                            .fontWeight(.medium)
                                        Spacer()
                                    }
                                }
                            }
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("DDDDDD"))
                                        .frame(width: 200, height: 100)
                                    VStack {
                                        Image("vietnamese")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 160.0, height: 100.0)
                                        Text("Vietnamese")
                                            .foregroundColor(Color("808080"))
                                            .fontWeight(.medium)
                                        Spacer()
                                    }
                                }
                            }
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("D0AF84"))
                                        .frame(width: 200, height: 100)
                                    VStack {
                                        Image("singlish")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 160.0, height: 100.0)
                                        Text("Singlish")
                                            .foregroundColor(.white)
                                            .fontWeight(.medium)
                                        Spacer()
                                    }
                                }
                            }
                        }
                        .padding(.leading, 30)
                    }
                    .frame(height: 185)
                    
                    Text("Suggest")
                        .font(.headline)
                        .padding(.leading, 30)
                        .padding(.top, 5)
                        .padding(.bottom, 20)
                    
                    VStack(spacing: 25) {
                        HStack(spacing: 45) {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("797FF4"))
                                .frame(width: 160, height: 210)
                                
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("E8F7A9"))
                                .frame(width: 160, height: 210)
                        }
                        
                        HStack(alignment: .top, spacing: 45) {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("D9F9D9"))
                                .frame(width: 160, height: 210)
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("F7D9FC"))
                                .frame(width: 160, height: 210)
                        }
                    }
                    .padding(.leading, 30)
                }
            }
        }
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView()
    }
}
