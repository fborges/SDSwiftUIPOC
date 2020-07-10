//
//  NetworkManager.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 08/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import Combine
import SwiftUI
import Foundation

class NetworkManager {
    func loadProperties(_ callback: @escaping (Result<HomeResponse, Error>) -> Void) {
        URLSession.shared.dataTask(with: URL(string: url)!) { (data, urlResponse, error) in
            guard let data = data else {
                return callback(.failure(error ?? NSError(domain:  "", code: 1, userInfo: nil) as Error))
            }
            
            do {
                let response = try JSONDecoder().decode(HomeResponse.self, from: data)
                callback(.success(response))
            } catch let error {
                print(error)
                callback(.failure(error))
            }
        }.resume()
    }
}

fileprivate let url = "https://private-d6181c-acidadedetownsville.apiary-mock.com/home"
