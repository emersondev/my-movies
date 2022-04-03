//
//  MovieDetailViewController.swift
//  my-movies
//
//  Created by Emerson.Novais on 03/04/22.
//

import UIKit

class MovieDetailViewController : UIViewController {
    
    var movie: Movies!
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImage.image = movie.image
        movieTitle.text = movie.title
        movieDescription.text = movie.description
    }
    
}
