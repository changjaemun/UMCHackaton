//
//  CertificationView.swift
//  Aehopark
//
//  Created by 윤성 on 6/29/24.
//

import SwiftUI

struct CertificationView: View {
    var body: some View {
        VStack{
            Text("애호박과 함께 하기 위한\n판매자 인증을 부탁해요")
                .font(.title)
                .bold()
                .padding()
            
            HStack{
                Text("판매처 업체명")
                Spacer()
            }
            TextField("사업자등록증상 업체명", text: .constant(""))
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            HStack{
                Text("대표자 성함")
                Spacer()
            }
            TextField("대표자 성함", text: .constant(""))
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            HStack{
                Text("대표자 핸드폰번호")
                Spacer()
            }
            TextField("대표자 핸드폰번호", text: .constant(""))
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            HStack{
                Text("사업자 등록번호")
                Spacer()
            }
            TextField("사업자 등록번호", text: .constant(""))
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            HStack{
                Text("판매처 주소")
                Spacer()
            }
            TextField("판매처 주소", text: .constant(""))
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            Button(action: {
                
            }, label: {
                Text("판매자 인증 신청")
            })
        }
    }
}

#Preview {
    CertificationView()
}
