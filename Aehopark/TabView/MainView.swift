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
                
                NavigationLink(destination: KategorieView()) {
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
                        ZStack{
                            Image("lemon")
                                .resizable()
                                .frame(width: 170, height: 170)
                                .cornerRadius(10)
//                            Text("레몬\n최저가로 사러가기")
//                                .font(.title3)
//                                .tint(Color.black)
//                                .bold()
                        }
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
                    ZStack{
                        NavigationLink(destination: ProductDetail()) {
                            Image("bellPepper")
                                .resizable()
                                .frame(width: 170, height: 170)
                                .cornerRadius(10)
                        }
                        NavigationLink(destination: Selling(productName: "")) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .background(Color.gray)
                                .cornerRadius(40)
                        }
                    }
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    MainView()
}
