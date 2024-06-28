//
//  AehoparkApp.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI

@main
struct Aehopark: App {
    
    // Register AppDelegate
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView(cartModel:.constant([ProductModel(price: "2,000", name: "방울토마토", image: "방울토마토", category: "야채류", ProductDetail:
                                                            ProductDetailModel(detailImages: ["방울토마토디테일"], priceChange: ["2,000", "2,200"], graphImage: "방울토마토그래프")
                                                        )]))
        }
    }
}
