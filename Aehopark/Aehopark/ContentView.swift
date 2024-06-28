//
//  ContentView.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser
import Alamofire

//import Combine

class AppState: ObservableObject {
    @Published var isLoggedIn: Bool = false
}

struct ContentView: View {
    @Binding var cartModel:[ProductModel]
    @EnvironmentObject var appState: AppState
        var body: some View {
            TabBarView(cartModel: $cartModel)
        }
}


//#Preview {
//    ContentView(cartModel: .constant(ProductModel))
//}
