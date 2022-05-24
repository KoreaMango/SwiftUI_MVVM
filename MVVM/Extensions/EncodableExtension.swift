//
//  EncodableExtension.swift
//  MVVM
//
//  Created by 강민규 on 2022/05/25.
//

import Foundation

// Converts encodable structure to dictionary.
extension Encodable {
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
