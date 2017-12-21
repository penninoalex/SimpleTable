//
//  RestaurantTableViewController.swift
//  SimpleTable
//
//  Created by Alessandro Pennino on 21/12/17.
//  Copyright © 2017 Alessandro Pennino. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    let resturantName = [
        (name : "Cafe" , img : "barrafina"),
        (name : "Cafe 1" , img : "bourkestreetbakery"),
        (name : "Cafe 2" , img : "cafedeadend"),
        (name : "Cafe 3" , img : "cafeloisl"),
        (name : "Cafe 4" , img : "cafelore"),
        (name : "Cafe 5" , img : "caskpubkitchen"),
        (name : "Cafe 6" , img : "confessional"),
        (name : "Cafe 7" , img : "donostia"),
        (name : "Cafe 8" , img : "fiveleaves"),
        (name : "Cafe 9" , img : "forkeerestaurant"),
        (name : "Cafe 10" , img : "grahamavenuemeats"),
        (name : "Cafe 11" , img : "haighschocolate"),
        (name : "Cafe 12" , img : "palominoespresso"),
        (name : "Cafe 13" , img : "petiteoyster"),
        (name : "Cafe 14" , img : "posatelier"),
        (name : "Cafe 15" , img : "restaurant"),
        (name : "Cafe 16" , img : "royaloak"),
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantName.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier , for : indexPath)
        
        //Configure the cell
        cell.textLabel?.text = resturantName[indexPath.row].name
        cell.imageView?.image = UIImage(named : resturantName[indexPath.row].img )
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
