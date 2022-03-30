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
        movies.append(Movies(title: "movie1", description: "description1"))
        movies.append(Movies(title: "movie2", description: "description2"))
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
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = movies[indexPath.row].title
        return cell
    }
}

