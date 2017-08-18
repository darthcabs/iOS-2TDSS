//
//  MoviesTableViewController.swift
//  MoviesTableView
//
//  Created by Usuário Convidado on 11/08/17.
//  Copyright © 2017 darthcabs. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    var movieTitles = ["Gladiator", "The Matrix", "Back To The Future"]
    var movieReleases = ["2000", "1999", "1985"]
    var moviePosters = [#imageLiteral(resourceName: "gladiator"), #imageLiteral(resourceName: "matrix"), #imageLiteral(resourceName: "back-to-the-future")]
    var indice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieTitles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = movieTitles[indexPath.row]
        cell.imageView?.image = moviePosters[indexPath.row]
        cell.detailTextLabel?.text = movieReleases[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        // Configure the cell...

        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            movieTitles.remove(at: indexPath.row)
            movieReleases.remove(at: indexPath.row)
            moviePosters.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indice = indexPath.row
        performSegue(withIdentifier: "movieSegue", sender: self)
    }
    
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let movieDetails = segue.destination as! DetalhesViewController
        movieDetails.titulo = movieTitles[indice]
        movieDetails.data = movieReleases[indice]
        movieDetails.poster = moviePosters[indice]
    }
}
