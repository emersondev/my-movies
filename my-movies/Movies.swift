//
//  Movies.swift
//  my-movies
//
//  Created by Emerson.Novais on 30/03/22.
//

import UIKit

class Movies{
    var title: String!
    var description: String!
    var image: UIImage!
    
    init(title: String, description: String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
}
