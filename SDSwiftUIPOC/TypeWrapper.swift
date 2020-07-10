//
//  TypeWrapper.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 09/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import Foundation

class TypeWrapper<T: Configurable> {
    let type: T.Type
    
    // I don't know what I'm doing
    init(type: T.Type) {
        self.type = type
    }
    
    func component(props: T.PropertyList) -> T {
        return T.init(properties: props)
    }
}
