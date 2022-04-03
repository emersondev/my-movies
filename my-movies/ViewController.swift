//
//  ViewController.swift
//  my-movies
//
//  Created by Emerson.Novais on 30/03/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var movies: [Movies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        movies.append(
            Movies(title: "movie1", description: "description1", image: UIImage.init(named: "iMovie1")!
                  )
            )
        movies.append(
            Movies(title: "movie2", description: "description2", image: UIImage.init(named: "iMovie2")!
                  )
            )
        movies.append(
            Movies(title: "movie3", description: "description3", image: UIImage.init(named: "iMovie3")!
                  )
            )
        movies.append(
            Movies(title: "movie4", description: "description4", image: UIImage.init(named: "iMovie4")!
                  )
            )
        movies.append(
            Movies(title: "movie5", description: "description5", image: UIImage.init(named: "iMovie5")!
                  )
            )
        movies.append(
            Movies(title: "movie6", description: "description6", image: UIImage.init(named: "iMovie6")!
                  )
            )
        movies.append(
            Movies(title: "movie7", description: "description7", image: UIImage.init(named: "iMovie7")!
                  )
            )
        movies.append(
            Movies(title: "movie8", description: "description8", image: UIImage.init(named: "iMovie8")!
                  )
            )
        movies.append(
            Movies(title: "movie9", description: "description9", image: UIImage.init(named: "iMovie9")!
                  )
            )
        movies.append(
            Movies(title: "movie10", description: "description10", image: UIImage.init(named: "iMovie10")!
                  )
            )
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        let identifier = "cellReuse"
//        let imageCorner: CGFloat = 42
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CellMovie
        
        cell.movieImage.image = movie.image
        /*
        how to transform in circle image
        cell.movieImage.layer.cornerRadius = imageCorner
        cell.movieImage.clipsToBounds = true
        */
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailMovie") {
            if let indexPath = tableView.indexPathForSelectedRow {
                let movieSelected = self.movies[ indexPath.row ]
                let viewControllerDestination = segue.destination as! MovieDetailViewController
                viewControllerDestination.movie = movieSelected
            }
        }
    }
}

