//
//  PostCell.swift
//  MVC-S Design Pattern
//
//  Created by Lucas Caron Albarello on 07/01/2018.
//  Copyright © 2018 Lucas Caron Albarello. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var corpoTextView: UITextView!
    
    func configurar(withPost post: Post){
        titulo.text = post.titulo
        corpoTextView.text = post.corpo
    }
}
