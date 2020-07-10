//
//  ImageLoader.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 10/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    
    private var cancellable: AnyCancellable?
    
    deinit {
        cancellable?.cancel()
    }
    
    private let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func load() {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data)}
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}
