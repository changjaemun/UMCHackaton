//
//  TabBarView.swift
//  Aehopark
//
//  Created by 윤성 on 6/28/24.
//

import SwiftUI

struct TabBarView: View {
    @Binding var cartModel:[ProductModel]
    var body: some View {
        NavigationStack{
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("메인")
                    }
                KategorieView()
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("카테고리")
                    }
                CartView(cartModel: $cartModel)
                    .tabItem {
                        Image(systemName: "cart")
                        Text("장바구니")
                    }
                    .badge(1)
                MyPageView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("마이페이지")
                    }
                
            }
            .accentColor(Color.green)
        }
    }
}

