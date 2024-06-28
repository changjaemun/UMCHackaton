//
//  ProductDetail.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI

struct ProductDetail: View {
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    TabView {
                               ForEach(0..<2) { index in
                                   Image("login")
                                       .resizable()
                                       .scaledToFit()
                                       .tag(index)
                               }
                    }.frame(width: 300, height: 200)
                           .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<2) { index in
                                Image("login")
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.1)
                    Divider()
                    VStack(alignment: .leading){
                        Text("가격 추세")
                        Image("chart")
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
                            Text("20,000원")
                            Spacer()
                            Button(action: {}, label: {
                                Text("장바구니 추가")
                            })
                        }.padding()
                    }
                    
                    Spacer()
                    
                }.navigationTitle("방울토마토")
            }
           
        }
        
    }
}

#Preview {
    ProductDetail()
}
