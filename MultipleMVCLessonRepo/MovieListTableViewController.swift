//
//  MovieListTableViewController.swift
//  MultipleMVCLessonRepo
//
//  Created by Levi Davis on 8/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    let movies = Movie.allMovies
    let actionMovies = Movie.actionFilm
    let animatedMovies = Movie.animationFilm
    let dramaMovies = Movie.dramaFilm

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return actionMovies.count
        case 1:
            return animatedMovies.count
        case 2:
            return dramaMovies.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Action"
        case 1:
            return "Animation"
        case 2:
            return "Drama"
        default:
            return "error: section not found"
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
           if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell {
            cell.topLabel.text = actionMovies[indexPath.row].name
            cell.bottomLabel.text = actionMovies[indexPath.row].genre
            cell.movieView.image = actionMovies[indexPath.row].getImage()
            return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell {
                cell.topLabel.text = animatedMovies[indexPath.row].name
                cell.bottomLabel.text = animatedMovies[indexPath.row].genre
                cell.movieView.image = animatedMovies[indexPath.row].getImage()
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell {
                cell.topLabel.text = dramaMovies[indexPath.row].name
                cell.bottomLabel.text = dramaMovies[indexPath.row].genre
                cell.movieView.image = dramaMovies[indexPath.row].getImage()
                return cell
            }
        default:
            return UITableViewCell()
            
        }
        return UITableViewCell()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else {fatalError("no id in segue")}
    
    switch segueIdentifier {
    case "detailSegue":
        guard let movieDetailVC = segue.destination as? MovieDetailViewController else {
            fatalError("oof")
        }
        guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
            fatalError("ufda")
        }
        movieDetailVC.movie = movies[selectedIndexPath.row]
    default:
        fatalError("double oof")
    }
}
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
