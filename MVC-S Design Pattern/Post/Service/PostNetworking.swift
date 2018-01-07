//
//  PostNetworking.swift
//  MVC-S Design Pattern
//
//  Created by Lucas Caron Albarello on 07/01/2018.
//  Copyright © 2018 Lucas Caron Albarello. All rights reserved.
//

import Foundation

class PostNetworking{
    private init(){}
    
    static func getPosts(completion: @escaping (GetPostsResponse)-> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        NetworkingService.shared.getData(fromUrl: url) { (json) in
            do{
                let response = try GetPostsResponse(json: json)
                completion(response)
            } catch{}
        }
    }
}
