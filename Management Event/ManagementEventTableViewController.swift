//
//  ManagementEventTableViewController.swift
//  Management Event
//
//  Created by MrDummy on 4/27/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import UIKit

class ManagementEventTableViewController: UITableViewController {

    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let evenLine = eventLines[section]
        return evenLine.events.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let eventLine = eventLines[section]
        return eventLine.dates
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Event Cell", for: indexPath)
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        cell.textLabel?.text = event.title
        
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let eventLine = eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let eventLine = eventLines[sourceIndexPath.section]
        let event = eventLine.events[sourceIndexPath.row]
        eventLine.events.remove(at: sourceIndexPath.row)
        
        let eventLineDes = eventLines[destinationIndexPath.section]
        eventLineDes.events.insert(event, at: destinationIndexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Event Detail") {
            let eventDetail = segue.destination as! EventDetailTableViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow{
                eventDetail.event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
                eventDetail.dateEvent = dateAtIndexPath(indexPath: indexPath as NSIndexPath)
                eventDetail.dateImage = imageAtIndexPath(indexPath: indexPath as NSIndexPath)
            }
        }
    }
    
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event{
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
    }
    
    func dateAtIndexPath(indexPath: NSIndexPath) -> String{
        let eventLine = eventLines[indexPath.section]
        return eventLine.dates
    }
    
    func imageAtIndexPath(indexPath: NSIndexPath) -> UIImage{
        let eventLine = eventLines[indexPath.section]
        return eventLine.dateImages
    }

}
