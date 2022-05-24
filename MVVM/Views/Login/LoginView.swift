//
//  LoginView.swift
//  MVVM
//
//  Created by 강민규 on 2022/05/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    var body: some View {
        //Email field
        TextField("Email", text: $loginViewModel.youremailText)
                .font(Font.system(size: 15))
                .padding()
                .background(
                  RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 3)
                ).padding()
        //Password field
        SecureField("Password", text: $loginViewModel.passwordText)
                .font(Font.system(size: 15))
                .padding()
                .background(
                  RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 3)
                ).padding()
        //Sign In Button
              Button("SignIn", action: {
                let createLoginRequest = CreateLoginRequest(email: loginViewModel.youremailText, password: loginViewModel.passwordText)
                loginViewModel.createLogin(request: createLoginRequest)
              })
        }
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
