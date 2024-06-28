//
//  ProductDetail.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI

struct ProductDetail: View {
    let model:ProductModel
    @State var cartModel:[ProductModel] = []
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    TabView {
                               ForEach(0..<2) { index in
                                   Image(model.image)
                                       .resizable()
                                       .scaledToFit()
                                       .tag(index)
                               }
                    }.frame(width: 300, height: 200)
                           .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<2) { index in
                                VStack{
                                    Text("\(index)일 전 가격")
                                    Text(model.ProductDetail.priceChange[index])
                                }
                                
                                    
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.1)
                    Divider()
                    VStack(alignment: .leading){
                        Text("가격 추세")
                        Image(model.ProductDetail.graphImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                        
                    }
                    Divider()
                    Text("판매처")
                    
                    HStack{
                        Text("브랜드")
                        Text("가격")
                        Spacer()
                    }.padding()
                    
                    ForEach(0..<2) { index in
                        HStack{
                            Text("쿠팡")
                            Text(model.price)
                            Spacer()
                            Button(action: {
                                cartModel.append(model)
                            }, label: {
                                Text("장바구니 추가")
                            })
                        }.padding()
                    }
                    
                    Spacer()
                    
                }.navigationTitle(model.name)
            }
           
        }
        
    }
}

#Preview {
    ProductDetail(model: dummyData().dummyProducts[0], cartModel: [dummyData().dummyProducts[0]])
}
