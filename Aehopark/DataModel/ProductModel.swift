//
//  ProductModel.swift
//  Aehopark
//
//  Created by 문창재 on 6/29/24.
//

import Foundation
import SwiftUI

struct ProductDetailModel: Codable, Hashable {
    let detailImages: [String]
    let priceChange: [String]
    let graphImage: String
}

struct ProductModel: Codable, Hashable {
    let price: String
    let name: String
    let image: String
    let category: String
    let ProductDetail: ProductDetailModel
    
    static func == (lhs: ProductModel, rhs: ProductModel) -> Bool {
        return lhs.price == rhs.price &&
               lhs.name == rhs.name &&
               lhs.image == rhs.image &&
               lhs.category == rhs.category &&
               lhs.ProductDetail == rhs.ProductDetail
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(price)
        hasher.combine(name)
        hasher.combine(image)
        hasher.combine(category)
        hasher.combine(ProductDetail)
    }
}



struct dummyData{
    let dummyProducts: [ProductModel] = [
        ProductModel(price: "2,000", name: "방울토마토", image: "방울토마토", category: "야채류", ProductDetail:
            ProductDetailModel(detailImages: ["방울토마토디테일"], priceChange: ["2,000", "2,200"], graphImage: "방울토마토그래프")
        ),
        ProductModel(price: "1,500", name: "피망", image: "피망", category: "야채류", ProductDetail:
            ProductDetailModel(detailImages: ["피망디테일"], priceChange: ["1,500", "1,700"], graphImage: "피망그래프")
        ),
        ProductModel(price: "2,500", name: "상추", image: "상추", category: "야채류", ProductDetail:
            ProductDetailModel(detailImages: ["상추디테일"], priceChange: ["2,500", "2,700"], graphImage: "상추그래프")
        ),
        ProductModel(price: "1,200", name: "깻잎", image: "깻잎", category: "야채류", ProductDetail:
            ProductDetailModel(detailImages: ["깻잎디테일"], priceChange: ["1,200", "1,400"], graphImage: "깻잎그래프")
        ),
        ProductModel(price: "3,000", name: "블루베리", image: "블루베리", category: "과일류", ProductDetail:
            ProductDetailModel(detailImages: ["블루베리디테일"], priceChange: ["3,000", "3,200"], graphImage: "블루베리그래프")
        ),
        ProductModel(price: "4,000", name: "망고", image: "망고", category: "과일류", ProductDetail:
            ProductDetailModel(detailImages: ["망고디테일"], priceChange: ["4,000", "4,200"], graphImage: "망고그래프")
        ),
        ProductModel(price: "2,800", name: "딸기", image: "딸기", category: "과일류", ProductDetail:
            ProductDetailModel(detailImages: ["딸기디테일"], priceChange: ["2,800", "3,000"], graphImage: "딸기그래프")
        ),
        ProductModel(price: "1,500", name: "레몬", image: "레몬", category: "과일류", ProductDetail:
            ProductDetailModel(detailImages: ["레몬디테일"], priceChange: ["1,500", "1,700"], graphImage: "레몬그래프")
        ),
        ProductModel(price: "5,000", name: "쌀", image: "쌀", category: "곡물류", ProductDetail:
            ProductDetailModel(detailImages: ["쌀디테일"], priceChange: ["5,000", "5,200"], graphImage: "쌀그래프")
        ),
        ProductModel(price: "4,500", name: "현미", image: "현미", category: "곡물류", ProductDetail:
            ProductDetailModel(detailImages: ["현미디테일"], priceChange: ["4,500", "4,700"], graphImage: "현미그래프")
        ),
        ProductModel(price: "3,000", name: "밀", image: "밀", category: "곡물류", ProductDetail:
            ProductDetailModel(detailImages: ["밀디테일"], priceChange: ["3,000", "3,200"], graphImage: "밀그래프")
        ),
        ProductModel(price: "2,500", name: "콩", image: "콩", category: "곡물류", ProductDetail: 
            ProductDetailModel(detailImages: ["콩디테일"], priceChange: ["2,500", "2,700"], graphImage: "콩그래프")
        )
    ]
}
