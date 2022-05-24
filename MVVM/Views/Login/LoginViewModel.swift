//
//  LoginViewModel.swift
//  MVVM
//
//  Created by 강민규 on 2022/05/25.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var youremailText: String = ""
    @Published var passwordText: String = ""
    @Published var createLoginResponse: CreateLoginResponse?
    
    func createLogin(request: CreateLoginRequest) {
        APIServices.shared.callCreateLogin(parameters: request.dictionary ?? [:]) { response in
            if let response = response {
                print(response)
            }
        }
            failure: { error in
               print(error)
            }
    }
}
