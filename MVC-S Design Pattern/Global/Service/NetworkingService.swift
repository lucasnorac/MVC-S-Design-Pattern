//
//  NetworkingService.swift
//  MVC-S Design Pattern
//
//  Created by Lucas Caron Albarello on 07/01/2018.
//  Copyright © 2018 Lucas Caron Albarello. All rights reserved.
//

import Foundation

class NetworkingService {
    private init(){}
    static let shared = NetworkingService()
    
    func getData(fromUrl url: URL, completion: @escaping (Any)-> Void){
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch{}
        }
        task.resume()
    }
}
