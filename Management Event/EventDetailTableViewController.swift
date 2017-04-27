//
//  EventDetailTableViewController.swift
//  Management Event
//
//  Created by MrDummy on 4/27/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import UIKit

class EventDetailTableViewController: UITableViewController, UITextViewDelegate, UITextFieldDelegate {

    var event: Event?
    var dateEvent: String?
    var dateImage: UIImage?
    
    @IBOutlet weak var dateImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var eventTitle: UITextField!
    @IBOutlet weak var eventDes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateImageView.image = dateImage
        eventTitle.text = event?.title
        eventDes.text = event?.description
        dateLabel.text = dateEvent
    }
    
    // Back click
    override func viewWillDisappear(_ animated: Bool) {
        event?.title = eventTitle.text!
        event?.description = eventDes.text!
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        eventDes.resignFirstResponder()
        eventTitle.resignFirstResponder()
    }
}
