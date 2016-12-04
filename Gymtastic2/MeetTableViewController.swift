//
//  MeetTableViewController.swift
//  Gymtastic2
//
//  Created by Olivia Wiedmann on 12/3/16.
//  Copyright © 2016 Tessa Wiedmann. All rights reserved.
//

import UIKit

class MeetTableViewController: UITableViewController {
    
    //MARK: Properties
    var meets = [Meet]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Load sample data
        loadMeets()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadMeets() {
        
        
        //let meet1 = Meet(name: "Hackathon", date: Date(timeIntervalSinceNow: 0))!
        //let meet2 = Meet(name: "Gril night", date: Date(timeIntervalSinceNow: -60))!
        
        //meets += [meet1, meet2]
        
        /*
        load data into meets
        for meet in meets{
            dates = meet.date
        }
        */
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
        
        return meets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MeetTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MeetTableViewCell
        if !meets.isEmpty {
            let meet = meets[indexPath.row]
            cell.nameLabel.text = meet.name
        
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .none

            cell.dateLabel.text = dateFormatter.string(from: meet.date)
        }
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            let meetDetailViewController = segue.destination as! DetailTableViewController
            
            //Get the cell that generated this segue
            if let selectedMeetCell = sender as? MeetTableViewCell {
                let indexPath = tableView.indexPath(for: selectedMeetCell)!
                let selectedMeet = meets[indexPath.row]
                meetDetailViewController.meet = selectedMeet
            }
        }
    }
    
    
    
    @IBAction func unwindToMeetList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? NewMeetViewController {
            
            if let meet = sourceViewController.meet {
                let newIndexPath = IndexPath(row: 0, section: 0)
                meets.insert(meet, at: 0)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
                
            }
        }
    }
    

}
