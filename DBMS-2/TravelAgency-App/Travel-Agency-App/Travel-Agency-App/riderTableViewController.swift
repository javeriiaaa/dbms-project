//
//  riderTableViewController.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import UIKit

class riderTableViewController: UITableViewController {

    let data = dataLoaderr().RiderData
           override func viewDidLoad() {
               super.viewDidLoad()

               // Uncomment the following line to preserve selection between presentations
               // self.clearsSelectionOnViewWillAppear = false

               // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
               // self.navigationItem.rightBarButtonItem = self.editButtonItem
           }

           // MARK: - Table view data source

       //    override func numberOfSections(in tableView: UITableView) -> Int {
       //        // #warning Incomplete implementation, return the number of sections
       //        return 0
       //    }

           override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               // #warning Incomplete implementation, return the number of rows
               return data.count
           }

           
           override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = data[indexPath.row].rider_name
               

               return cell
           }

    }


