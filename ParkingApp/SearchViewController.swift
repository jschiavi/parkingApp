//
//  SearchViewController.swift
//  ParkingApp
//
//  Created by Joey Schiavi on 3/15/17.
//  Copyright © 2017 Park@UF. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //table view variables
    @IBOutlet weak var searchTable: UITableView!
    var cell: TableViewCell?
    
    //array of UF parking decals
    var decalList = ["Green", "Park & Ride", "Red 1", "Red 3", "Brown 2", "Brown 3", "Orange", "Blue", "Medical Resident", "UF Health South", "Commuter", "Gated", "Disabled", "Motorcycle/Scooter"]
    
    //row identifier
    //used to keep track of item(s) selected
    var rowSelected: IndexPath?
    var rowID: Int!
    var rowText: String!
    
    var searchQueried: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if searchQueried.isEmpty {
            searchQueried = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        }
        print(searchQueried)
        
        self.searchTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return decalList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.searchTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.cellLabel.text = decalList[indexPath.row]
        cell.detailButton.tag = indexPath.row
        cell.searchSwitch.tag = indexPath.row
        
        return cell
    }
    
    @IBAction func showDecalDetails(_ sender: UIButton) {
        self.rowID = sender.tag
        self.rowText = decalList[rowID]
        //print(rowID)
        //print(rowText)
        
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    @IBAction func setQuery(_ sender: UISwitch) {
        self.searchQueried[sender.tag] = sender.isOn ? 1 : 0
        //print(sender.tag)
        //print(self.searchQueried[sender.tag])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showDetails") {
            let dvc = segue.destination as! DetailViewController

            dvc.stringPassed = self.rowText
        }
        if(segue.identifier == "showResults") {
            let mvc = segue.destination as! MapViewController
            
            mvc.searchResults = self.searchQueried
            self.searchQueried = []
            //print(searchQueried)
        }
    }

}
