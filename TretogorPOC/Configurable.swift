//
//  Configurable.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 09/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import Foundation
import SwiftUI

protocol Configurable {
    associatedtype PropertyList: Decodable
    
    var properties: PropertyList { get }
    init(properties: PropertyList)
}
