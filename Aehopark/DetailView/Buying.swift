//
//  Buying.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI

struct Buying: View {
    @State private var isChecked = false
    @State private var isBuying = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing:0){
                List{
                AddressList()
                AddressList()
                    Section{
                        Button(action: {}, label: {
                            Text("새 주소 추가")
                        })
                    }
                    
                }
                List{
                    HStack{
                        Toggle(isOn: $isChecked) {
                                    
                                }
                                .toggleStyle(CheckboxToggleStyle())
                        Image("kakaoPay")
                        Text("카카오페이")
                        Spacer()
                    }
                }
                Button(action: {
                    isBuying.toggle()
                                print("구매하기 버튼 클릭됨")
                            }) {
                                Text("확인")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                                    .frame(width: UIScreen.main.bounds.width * 0.9)
                                    .background(Color.blue)
                                    .cornerRadius(25)
                            }
            }
            }.navigationTitle("배송지 및 결제수단")
                .navigationBarTitleDisplayMode(.inline)
                .alert(isPresented: $isBuying) {
                                    Alert(
                                        title: Text("구매 완료"),
                                        message: Text("구매가 성공적으로 완료되었습니다."),
                                        dismissButton: .default(Text("완료"))
                                    )
                                }
                
        }
        
    }

struct AddressList:View{
    @State private var isChecked = false
    
    var body: some View{
        VStack{
            Spacer()
            HStack{
                Text("ㅇㅇㅇ")
                Text("010-4444-4444")
            }
            HStack{
                Text("경상남도 창원시 마산한ㅍㅁㄴㅇ")
            }
            HStack{
                Spacer()
                Toggle(isOn: $isChecked) {
                            
                        }
                        .toggleStyle(CheckboxToggleStyle())
            }
            
            Spacer()
            
            
        }
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

#Preview {
    Buying()
}
