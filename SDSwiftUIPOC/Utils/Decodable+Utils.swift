//
//  Decodable+Utils.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 09/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import Foundation

extension Decodable {
    init(dictionary: [String: Any]) throws {
        self = try JSONDecoder().decode(Self.self, from: JSONSerialization.data(withJSONObject: dictionary))
    }
}
