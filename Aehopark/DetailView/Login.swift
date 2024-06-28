//
//  Login.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI

struct Login: View {
    
    var body: some View {
        VStack{
            Spacer()
            Text("Sign Up")
                .font(.system(size: 76,weight: .bold))
            Text("Login to SNS or Unknown account")
            
            Spacer()
            
            TabView {
                       ForEach(0..<2) { index in
                           Image("login")
                               .resizable()
                               .scaledToFit()
                               //.frame(width: 200, height: 100)
                               .tag(index)
                       }
            }.frame(width: 300, height: 200)
                   .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            Spacer()
            
            socialLoginButton(action: nil, backgroundColor: Color.yellow, logoImageName: "kakaologinlogo", buttonText: "카카오로 로그인")
            
            socialLoginButton(action: nil, backgroundColor: Color.green, logoImageName: "naverloginlogo", buttonText: "네이버로 로그인")
            
            Spacer()
            
        }
        
        
    }
}


struct socialLoginButton:View{
    var action: (() -> Void)?
    var backgroundColor: Color
    var logoImageName: String
    var buttonText: String
    
    var body: some View{
        Button(action: {
//                        action()
                    }) {
                        HStack {
                            Image(logoImageName) // 네이버 로고 이미지
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text(buttonText)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.08)
                        .background(backgroundColor)
                        .cornerRadius(25)
                    }
    }
}

#Preview {
    Login()
}
