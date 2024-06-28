//
//  Selling.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI

struct Selling: View {
    @State private var selectedCategory: String? = nil
    @State var productName:String
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 120,height: 120)
                                .foregroundStyle(Color.gray)
                                .cornerRadius(10)
                            Image(systemName: "camera")
                                .resizable()
                                .frame(width: 100,height: 100)
                                .padding()
                        }
                        Spacer()
                    }.padding()
                    
                    VStack{
                        HStack{
                            Text("상품명")
                                .padding(.horizontal)
                            Spacer()
                        }
                        TextField("상품명", text: $productName)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                            .padding()
                    }
                    VStack{
                        HStack{
                            Text("카테고리")
                                .padding(.horizontal)
                            Spacer()
                        }
                        HStack(spacing: 20) { // 버튼 사이의 간격을 설정합니다.
                            CategoryButton(title: "야채류", selectedCategory: $selectedCategory)
                            CategoryButton(title: "과일류", selectedCategory: $selectedCategory)
                            CategoryButton(title: "곡류", selectedCategory: $selectedCategory)
                            CategoryButton(title: "육류", selectedCategory: $selectedCategory)
                        }
                        .padding()
                    }
                    VStack{
                        HStack{
                            Text("판매가격")
                                .padding(.horizontal)
                            Spacer()
                        }
                        TextField("판매가격", text: $productName)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                            .padding()
                    }
                    VStack{
                        HStack{
                            Text("상세 설명")
                                .padding(.horizontal)
                            Spacer()
                        }
                        TextField("상품의 상세 설명을 작성해주세요", text: $productName)
                            .padding()
                            .frame(height: 200)
                            .background(Color.gray.opacity(0.5))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                            
                            .padding()
                    }
                    
                    Spacer()
                    
                }.navigationTitle("상품등록")
                    .navigationBarTitleDisplayMode(.inline)
                
            }
            Button(action: {
                            // 구매하기 버튼 클릭 시 수행할 작업
                            print("구매하기 버튼 클릭됨")
                        }) {
                            Text("상품등록")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width * 0.9)
                                .background(Color.blue)
                                .cornerRadius(25)
                        }
        }
        
    }
}

struct CategoryButton: View {
    let title: String
    @Binding var selectedCategory: String?

    var body: some View {
        Button(action: {
            selectedCategory = title
        }) {
            Text(title)
                .foregroundColor(.white)
                .padding()
                .frame(minWidth: 80)
                .background(selectedCategory == title ? Color.blue : Color.gray)
                .cornerRadius(8)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    Selling(productName: "")
}
