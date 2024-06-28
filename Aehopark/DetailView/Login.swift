//
//  Login.swift
//  Aehopark
//
//  Created by 문창재 on 6/28/24.
//

import SwiftUI
import KakaoSDKAuth
import KakaoSDKUser
import Alamofire

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
            
            socialLoginButton(action: kakaoLoginFunc().kakaoLogin, backgroundColor: Color.yellow, logoImageName: "kakaologinlogo", buttonText: "카카오로 로그인")
            
            
            Spacer()
            
        }
        
        
    }
}


struct socialLoginButton:View{
    var action: (() -> Void)
    var backgroundColor: Color
    var logoImageName: String
    var buttonText: String
    
    var body: some View{
        Button(action: {
                        action()
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


struct kakaoLoginFunc {
    
    func kakaoLogin() {
        if UserApi.isKakaoTalkLoginAvailable() {
            UserApi.shared.loginWithKakaoTalk { (oauthToken, error) in
                if let error = error {
                    print("Error logging in with KakaoTalk: \(error)")
                } else {
                    print("Successfully logged in with KakaoTalk")
                    self.getUserInfo(oauthToken: oauthToken)
                }
            }
        } else {
            UserApi.shared.loginWithKakaoAccount { (oauthToken, error) in
                if let error = error {
                    print("Error logging in with KakaoAccount: \(error)")
                } else {
                    print("Successfully logged in with KakaoAccount")
                    self.getUserInfo(oauthToken: oauthToken)
                }
            }
        }
    }
    
    func getUserInfo(oauthToken: OAuthToken?) {
        UserApi.shared.me { (user, error) in
            if let error = error {
                print("Error fetching user info: \(error)")
            } else {
                if let user = user {
                    print("User ID: \(user.id ?? 0)")
                    print("User nickname: \(user.kakaoAccount?.profile?.nickname ?? "")")
                    print("User email: \(user.kakaoAccount?.email ?? "")")
                    // Send user info to your server
                    self.sendUserInfoToServer(user: user)
                }
            }
        }
    }
    
    func sendUserInfoToServer(user: User) {
        let parameters: [String: Any] = [
            "id": user.id ?? 0,
            "nickname": user.kakaoAccount?.profile?.nickname ?? "",
            "email": user.kakaoAccount?.email ?? ""
        ]

        AF.request("http://localhost:8080", method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
            switch response.result {
            case .success(let value):
                print("Successfully sent user info to server: \(value)")
            case .failure(let error):
                print("Error sending user info to server: \(error)")
            }
        }
    }
}

