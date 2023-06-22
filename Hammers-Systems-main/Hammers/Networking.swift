//
//  Networking.swift
//  Hammers
//
//  Created by MacBook on 22.06.2023.
//

import Foundation
import UIKit

class Networking {
    static let url = URL(string: "https://api.npoint.io/0daa423e9d0b4c2c4b54")!
    
    static func getMenu(_ completion: @escaping ([MenuItem]) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let pizzas = try JSONDecoder().decode([MenuItem].self, from: data)
                completion(pizzas)
            } catch let decodeError {
                print(decodeError)
            }
        }.resume()
    }
    
    static func getImage(url: URL, _ completion: @escaping (UIImage) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            if let image = UIImage(data: data) {
                completion(image)
            }
        }.resume()
    }
}
