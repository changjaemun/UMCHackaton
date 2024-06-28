//
//  CartView.swift
//  Aehopark
//
//  Created by 윤성 on 6/28/24.
//

import SwiftUI

struct CartView: View {
    @State private var value: Int = 1
    
    var body: some View {
        VStack {
            Text("장바구니")
            List {
                CartListView(productImage: "lemon", productName: "아따달다 최고당도 방울토마토", productPrice: 10000 * value, value: $value)
            }
            VStack {
                HStack {
                    Text("상품 합계")
                    Spacer()
                    Text("\(10000 * value)원")
                }
                HStack {
                    Text("수수료")
                    Spacer()
                    Text("3 %")
                }
                HStack {
                    Rectangle()
                        .frame(width: .infinity, height: 1)
                }
                HStack {
                    Text("합계")
                    Spacer()
                    Text("\(Int(Double(10000 * value) * 1.03))원")
                        .font(.headline)
                }
                HStack {
                    Button("주문하기") {
                        
                    }
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor( Color.green)
                    )
                }
            }
            .padding()
        }
    }
}

struct CartListView: View {
    let productImage: String
    let productName: String
    let productPrice: Int
    @Binding var value: Int
    
    var body: some View {
        HStack {
            VStack {
                Image(productImage)
                    .resizable()
                    .frame(width: 80, height: 80)
            }
            VStack {
                HStack {
                    Text(productName)
                    Spacer()
                }
                HStack {
                    Text("\(productPrice)원")
                    Spacer()
                    LabeledStepper(
                      "\(productName)",
                      description: "Description",
                      value: $value
                    )
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    CartView()
}
