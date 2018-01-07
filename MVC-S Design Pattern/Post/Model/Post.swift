//
//  Post.swift
//  MVC-S Design Pattern
//
//  Created by Lucas Caron Albarello on 07/01/2018.
//  Copyright © 2018 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct Post {
    let usuarioId: Int
    let id: Int
    let titulo: String
    let corpo: String
    init?(dict: [String: Any]){
        guard let usuarioId = dict["userId"] as? Int,
        let id = dict["id"] as? Int,
        let titulo = dict["title"] as? String,
        let corpo = dict["body"] as? String
            else {return nil}
    self.usuarioId = usuarioId
    self.id = id
    self.titulo = titulo
    self.corpo = corpo
    }
}
