//
//  PetsTableViewController.swift
//  Pets
//
//  Created by Scott Bennett on 9/4/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit

class PetsTableViewController: UITableViewController {
    
    let myPets = ["Misha", "Night Furry", "Hero", "Patches", "Sunny"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.reloadData()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPets.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetCell", for: indexPath)

        let pet = myPets[indexPath.row]
        cell.textLabel?.text = pet

        return cell
    }

}
