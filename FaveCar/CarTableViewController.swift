//
//  carTableViewController.swift
//  FaveCar
//
//  Created by Pulkit Aggarwal on 07/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

var namesArray = [String]()
var imagesArray = [UIImage]()


class carTableViewController: UITableViewController {
    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    @IBOutlet weak var action: UIBarButtonItem!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return namesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath) as! CarTableViewCell

        cell.carImgView.image = imagesArray[indexPath.row]
        
        cell.numberLabel.text = "\(indexPath.row + 1)"
        
        cell.titleLabel.text = namesArray[indexPath.row]
        

        return cell
    }

    @IBAction func load(_ sender: Any) {
        namesArray = ["BMW M6", "NEW MAYBACH", "RANGE ROVER", "PORSHE JEEP"]
        
        imagesArray = [UIImage(named:"car1")!, UIImage(named:"car2")!, UIImage(named:"car3")!, UIImage(named:"car4")!]
        
        tableView.reloadData()
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
            
            namesArray.remove(at: indexPath.row)
            imagesArray.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            tableView.reloadData()
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        name = namesArray[indexPath.row]
        
        performSegue(withIdentifier: "identifier", sender: self)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
     if let myIndexPath = tableView.indexPathForSelectedRow
     {
     let name = namesArray[myIndexPath.row]
     let image = imagesArray[myIndexPath.row]
    if segue.identifier == "test"{
     let destinationVC = segue.destination as! AddCarViewController
        destinationVC.carImgView.image = image
        destinationVC.nameTextField.text = name
     }
     }
    }

}
