//
//  MainView.swift
//  Aehopark
//
//  Created by 윤성 on 6/28/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView {
            //검색
            VStack {
                
                NavigationLink(destination: SearchField()) {
                    TextField("검색", text: .constant(""))
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                
                // 광고
                Link(destination: URL(string: "https://alwayz.co")!) {
                    HStack {
                        Image("ads")
                            .resizable()
                            .frame(width: 350, height: 200)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                //사진 - 4개
                HStack {
                    NavigationLink(destination: ProductDetail()) {
                        Image("lemon")
                            .resizable()
                            .frame(width: 170, height: 170)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: ProductDetail()) {
                        Image("melon")
                            .resizable()
                            .frame(width: 170, height: 170)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                HStack {
                    NavigationLink(destination: ProductDetail()) {
                        Image("orange")
                            .resizable()
                            .frame(width: 170, height: 170)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: ProductDetail()) {
                        Image("bellPepper")
                            .resizable()
                            .frame(width: 170, height: 170)
                            .cornerRadius(10)
                    }
                }
                
            }
            
        }
        
    }
}

#Preview {
    MainView()
}
