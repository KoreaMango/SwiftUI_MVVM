//
//  CreateLoginRequest.swift
//  MVVM
//
//  Created by 강민규 on 2022/05/25.
//

import Foundation
//Request
struct CreateLoginRequest: Codable {
  var email: String?
  var password: String?
}
