//
//  ViewController.swift
//  SimpleTable
//
//  Created by Alessandro Pennino on 19/12/17.
//  Copyright © 2017 Alessandro Pennino. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
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
            
            /*"deadend","Homei","Teakha","Michele","Cafe Loisl","Genovesi","Sorbillo","50 Kalò","Pippo","Donostia","Cafe deadend","Homei","Teakha","Michele","Cafe Loisl","Genovesi","Sorbillo","50 Kalò","Pippo","Donostia"]*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier , for : indexPath)
        
        //Configure the cell
        cell.textLabel?.text = resturantName[indexPath.row].name
        cell.imageView?.image = UIImage(named : resturantName[indexPath.row].img )
        return cell
    }
    

}

