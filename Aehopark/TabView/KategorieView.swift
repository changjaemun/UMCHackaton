import SwiftUI

struct KategorieView: View {
    let models: [ProductModel] = dummyData().dummyProducts
    @State private var selectedCategory: String?
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("카테고리")
                        .font(.title2)
                        .padding(.top, 20)
                    
                    TextField("원하시는 재료를 검색해 보세요!", text: .constant(""))
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal)
                    
                    HStack {
                        Button(action: {
                            selectedCategory = "야채류"
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 120, height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                                
                                VStack {
                                    Text("🥕")
                                    Text("야채류")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        
                        Button(action: {
                            selectedCategory = "곡물류"
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 120, height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                                
                                VStack {
                                    Text("🌾")
                                    Text("곡물류")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        
                        Button(action: {
                            selectedCategory = "과일류"
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 120, height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                                
                                VStack {
                                    Text("🍇")
                                    Text("과일류")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    .padding(.top, 20)
                    .tint(Color.white)
                    .padding()
                    
                    if let selectedCategory = selectedCategory {
                        HStack {
                            Spacer()
                            Text("  \(selectedCategory)")
                                .font(.title3)
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("더보기")
                            })
                            Spacer()
                        }
                        
                        VStack {
                            ForEach(filteredProducts(by: selectedCategory), id: \.self) { product in
                                NavigationLink(destination: ProductDetail(model: product)) {
                                    VStack {
                                        Image(product.image)
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                        Text(product.category)
                                            .tint(Color.black)
                                            .font(.subheadline)
                                        Text(product.name)
                                            .tint(Color.black)
                                            .font(.title3)
                                        Text("최저가 보러가기")
                                            .tint(Color.gray)
                                            .font(.subheadline)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    func filteredProducts(by category: String) -> [ProductModel] {
        return models.filter { $0.category == category }
    }
}

#Preview {
    KategorieView()
}
