//
//  HomeResponse.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 08/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import Foundation

struct HomeResponse: Decodable {
    let components: [Component]
}

struct Component: Decodable, Identifiable {
    let id: String
    let type: String
    let properties: [String: String]
}
