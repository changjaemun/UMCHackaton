//
//  KategorieView.swift
//  Aehopark
//
//  Created by 윤성 on 6/28/24.
//

import SwiftUI

struct KategorieView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack {
                    Text("카테고리")
                        .font(.title2)
                        .padding(.top, 20)
                    
                    TextField("원하시는 재료를 검색해 보세요!", text: .constant(""))
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal)
                    
                    HStack {
                        Button(action: {
                            // 정렬 함수
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 120, height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                                
                                VStack {
                                    Text("🥕")
                                    Text("야채류")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        
                        Button(action: {
                            // 정렬 함수
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 120, height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                                
                                VStack {
                                    Text("🌾")
                                    Text("곡물류")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        
                        Button(action: {
                            // 정렬 함수
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 120, height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                                
                                VStack {
                                    Text("🍇")
                                    Text("과일류")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    .padding(.top, 20)
                    .tint(Color.white)
                    .padding()
                    HStack {
                        Spacer()
                        Text("  상품")
                            .font(.title3)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("더보기")
                        })
                        Spacer()
                    }
                    VStack{
                        HStack{
                            NavigationLink(destination: ProductDetail(), label: {
                                VStack{
                                    Image("lemon")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                    Text("과일류")
                                        .tint(Color.black)
                                        .font(.subheadline)
                                    Text("레몬")
                                        .tint(Color.black)
                                        .font(.title3)
                                    Text("최저가 보러가기")
                                        .tint(Color.gray)
                                        .font(.subheadline)
                                }
                            })
                            
                            NavigationLink(destination: ProductDetail(), label: {
                                VStack{
                                    Image("lemon")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                    Text("과일류")
                                        .tint(Color.black)
                                        .font(.subheadline)
                                    Text("레몬")
                                        .tint(Color.black)
                                        .font(.title3)
                                    Text("최저가 보러가기")
                                        .tint(Color.gray)
                                        .font(.subheadline)
                                }
                            })
                        }
                    }
                    HStack{
                        NavigationLink(destination: ProductDetail(), label: {
                            VStack{
                                Image("lemon")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                Text("과일류")
                                    .tint(Color.black)
                                    .font(.subheadline)
                                Text("레몬")
                                    .tint(Color.black)
                                    .font(.title3)
                                Text("최저가 보러가기")
                                    .tint(Color.gray)
                                    .font(.subheadline)
                            }
                        })
                        NavigationLink(destination: ProductDetail(), label: {
                            VStack{
                                Image("lemon")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                Text("과일류")
                                    .tint(Color.black)
                                    .font(.subheadline)
                                Text("레몬")
                                    .tint(Color.black)
                                    .font(.title3)
                                Text("최저가 보러가기")
                                    .tint(Color.gray)
                                    .font(.subheadline)
                            }
                        })
                    }
                }
            }
        }
    }
        
}


#Preview {
    KategorieView()
}
