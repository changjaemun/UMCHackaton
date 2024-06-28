//
//  TabBarView.swift
//  Aehopark
//
//  Created by 윤성 on 6/28/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("메인")
                }
            SearchField()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("카테고리")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("장바구니")
                }
            MyPageView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("마이페이지")
                }
            
        }
    }
}

#Preview {
    TabBarView()
}
