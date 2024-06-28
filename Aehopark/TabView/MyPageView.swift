//
//  MyPageView.swift
//  Aehopark
//
//  Created by 윤성 on 6/28/24.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        let name: String = "oo"
        
        NavigationView {
            VStack {
                HStack {
                    Text("\(name)님\n안녕하세요 :)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 80, height: 80)
                }
                
                List {
                    Text("서비스 소개")
                    Text("서비스 이용약관")
                    Text("개인정보 처리방침")
                    Text("마케팅, 광고성 정보 알림 수신 동의")
                    Text("판매자 인증하기")
                    Text("상품판매 등록하기")
                    Text("배송지 및 결제 관리")
                    Text("로그아웃")
                }
            }
        }
    }
}

#Preview {
    MyPageView()
}
