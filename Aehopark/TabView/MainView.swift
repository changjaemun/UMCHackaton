import SwiftUI

struct MainView: View {
    let models: [ProductModel] = dummyData().dummyProducts.shuffled()
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        NavigationLink(destination: KategorieView()) {
                            TextField("검색", text: .constant(""))
                                .padding(10)
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                                .padding(.horizontal)
                        }
                        
                        // 광고
                        Link(destination: URL(string: "https://alwayz.co")!) {
                            HStack {
                                Image("ads")
                                    .resizable()
                                    .frame(width: 350, height: 200)
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                        
                        // 랜덤으로 선택된 4개의 상품 이미지 표시
                        VStack{
                            HStack {
                                ForEach(0..<2) { index in
                                    let product = models[index]
                                    NavigationLink(destination: ProductDetail(model: product)) {
                                        Image(product.image)
                                            .resizable()
                                            .frame(width: 170, height: 170)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            HStack {
                                ForEach(3..<5) { index in
                                    let product = models[index]
                                    NavigationLink(destination: ProductDetail(model: product)) {
                                        Image(product.image)
                                            .resizable()
                                            .frame(width: 170, height: 170)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            
                        }
                            
                        
                    }
                }
                NavigationLink(destination: Selling(productName: "")) {
                    Circle()
                        .foregroundColor(.green)
                        .cornerRadius(40)
                        .frame(width: 90, height: 90)
                        .overlay {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                        }
                }
                .offset(x: 120, y: 250)
            }
            .navigationTitle("애호박")
        }
    }
}

#Preview {
    MainView()
}
