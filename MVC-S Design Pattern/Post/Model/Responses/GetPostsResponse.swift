//
//  GetPostsResponse.swift
//  MVC-S Design Pattern
//
//  Created by Lucas Caron Albarello on 07/01/2018.
//  Copyright © 2018 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct GetPostsResponse{
    let posts : [Post]
    init(json: Any) throws{
        guard let array = json as? [[String: Any]] else {throw NetworkingError.someError}
        var posts = [Post]()
        for item in array{
            guard let post = Post(dict: item) else {continue}
            posts.append(post)
        }
        self.posts = posts
    }
}
