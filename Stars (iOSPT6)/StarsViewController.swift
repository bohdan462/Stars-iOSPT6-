//
//  StarsViewController.swift
//  Stars (iOSPT6)
//
//  Created by Bohdan Tkachenko on 4/23/20.
//  Copyright © 2020 Bohdan Tkachenko. All rights reserved.
//

import UIKit

class StarsViewController: UIViewController {
    
    // MARK: IBOutlets

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: IBActions
    @IBAction func printButtonTapped(_ sender: Any) {
    }
    
    @IBAction func createButtonTapped(_ sender: Any) {
    }
    
    //Mark: UiTableViewSDataSource - Protocol
    


}

class StarTabelViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
   
    
    
   

    
    
}

