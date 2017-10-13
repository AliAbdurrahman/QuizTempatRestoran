//
//  TableViewController.swift
//  Tempat Restoran -AlBa33.Studio-
//
//  Created by Rizki Syaputra on 10/13/17.
//  Copyright © 2017 Rizki Syaputra. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //deklarasi transportItem dengan array
    let TempatRestaurant = ["Pizza Hut", "Starbucks", "J.CO Donuts", "BreadTalk", "Bakso Lapangan Tembak", "Laa Kopi", "KFC", "Angkringan", "Barber Shop", "Burger King"]
    
    var indexOfNumbers = [String]()
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
         var indexTable = "A B C D E F G H I J"
        
        indexOfNumbers = indexTable.components(separatedBy: " ")

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
        return TempatRestaurant.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TempatRestaurant", for: indexPath)

        
        //menampilkan transportItems
        cell.textLabel?.text = TempatRestaurant[indexPath.row]
        
        //menampilkan gambar
        let imgName = UIImage(named: TempatRestaurant[indexPath.row])
        cell.imageView?.image = imgName
        
        return cell
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        return indexOfNumbers
    }
    
    override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        
        //deklarasi var temp sebagai penyimpanan data dari indexofnumber
        let temp = indexOfNumbers as NSArray
        return temp.index(of: title)


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


    }}
