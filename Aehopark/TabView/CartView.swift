//
//  CartView.swift
//  Aehopark
//
//  Created by 윤성 on 6/28/24.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        
        Text("장바구니")
        List {
            CartListView(productImage: "lemon", productName: "아따달다 최고당도 방울토마토 ", productPrice: "10000", value: 1)
        }
        
    }
}

struct CartListView: View {
    
    let productImage: String
    let productName: String
    let productPrice: String
    var value: Int
    
    var body: some View {
        
        HStack {
            VStack{
                Image("\(productImage)")
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
                }
            }
            
        }
        
        
    }
}

#Preview {
    CartView()
}
