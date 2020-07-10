//
//  Renderer.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 09/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import SwiftUI


class Renderer: ObservableObject {
    static let shared = Renderer()
    @Published var components: [Component] = []
    
    private let manager = NetworkManager()

    
    private init() {
        manager.loadProperties { result in
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    self.components = response.components
                }
            case .failure(let error):
                self.components = [Component(id: "1", type: "Title", properties: ["label": error.localizedDescription, "textColor": "#000000"])]
            }
        }
    }
    
    // TODO: get rid of this switch statement
    func render(component: Component) -> AnyView {
        switch component.type {
        case "Title":
            guard let props = try? Title.PropertyList(dictionary: component.properties) else {
                fallthrough
            }
            return AnyView(Title(properties: props))
        case "Description":
            guard let props = try? Description.PropertyList(dictionary: component.properties) else {
                fallthrough
            }
            return AnyView(Description(properties: props))
        case "AsyncImage":
            guard let props = try? AsyncImage.PropertyList(dictionary: component.properties) else {
                fallthrough
            }
            return AnyView(AsyncImage(properties: props))
        case "URLButton":
            guard let props = try? URLButton.PropertyList(dictionary: component.properties) else {
                fallthrough
            }
            return AnyView(URLButton(properties: props))
        default:
            return AnyView(Text("aaaaaaa"))
        }
    }
}
