//
//  DetailViewController.swift
//  ParkingApp
//
//  Created by Joey Schiavi on 3/15/17.
//  Copyright © 2017 Park@UF. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //@IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var optionsTitleLabel: UILabel!
    @IBOutlet weak var listLabel: UILabel!
    
    //@IBOutlet var viewBackground: UIView!
    
    var stringPassed: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = stringPassed
        optionsTitleLabel.text = "Parking Options"
        //listLabel.sizeToFit()
        
        if stringPassed == "Green" {
            self.view.backgroundColor = UIColor(red: 0x00/0xFF, green: 0x99/0xFF, blue: 0x00/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Graduate and professional students living off-campus"
            listLabel.text = "Green\n\n'Any Decal'"
        }
        else if stringPassed == "Park & Ride" {
            self.view.backgroundColor = UIColor(red: 0xcd/0xFF, green: 0xcd/0xFF, blue: 0x98/0xFF, alpha: 0xFF/0xFF)
            
            self.titleLabel.textColor = UIColor.black
            self.descriptionLabel.textColor = UIColor.black
            self.optionsTitleLabel.textColor = UIColor.black
            self.listLabel.textColor = UIColor.black
            
            descriptionLabel.text = "Undergraduate students living off-campus"
            listLabel.text = "'Any Decal'"
        }
        else if stringPassed == "Red 1" {
            self.view.backgroundColor = UIColor(red: 0x80/0xFF, green: 0x00/0xFF, blue: 0x00/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Student who have completed 50 or more credit hours and live on-campus"
            listLabel.text = "Red 1\n\nAll Red\n\n'Any Decal'"
        }
        else if stringPassed == "Red 3" {
            self.view.backgroundColor = UIColor(red: 0xff/0xFF, green: 0x00/0xFF, blue: 0x00/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Students who have completed fewer than 50 credit hours and live on-campus"
            listLabel.text = "All Red\n\n'Any Decal'"
        }
        else if stringPassed == "Brown 2" {
            self.view.backgroundColor = UIColor(red: 0x99/0xFF, green: 0x66/0xFF, blue: 0x33/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Students living in Corry and Maguire Family Housing Villages"
            listLabel.text = "Brown 2\n\n'Any Decal'"
        }
        else if stringPassed == "Brown 3" {
            self.view.backgroundColor = UIColor(red: 0x99/0xFF, green: 0x66/0xFF, blue: 0x33/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Students living in Diamond Family Housing Village"
            listLabel.text = "Brown 3\n\n'Any Decal'"
        }
        else if stringPassed == "Disabled" {
            self.view.backgroundColor = UIColor(red: 0x00/0xFF, green: 0x00/0xFF, blue: 0x00/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Students, faculty and staff with a state-issued Disabled Persons Parking Placard"
            listLabel.text = "Disabled\n\nOrange\n\nBlue\n\nCommuter\n\nGreen\n\nRed 1\n\nAll Red\n\nBrown 2\n\nBrown 3\n\n'Any Decal'"
        }
        else if stringPassed == "Motorcycle/Scooter" {
            self.view.backgroundColor = UIColor(red: 0x00/0xFF, green: 0x33/0xFF, blue: 0xcc/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "All members of the UF community"
            listLabel.text = "Motorcycle/Scooter"
        }
        else if stringPassed == "Orange" {
            self.view.backgroundColor = UIColor(red: 0xee/0xFF, green: 0x5b/0xFF, blue: 0x2b/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Faculty and staff members, full-time OPS employees and part-time OPS employes not affiliated as students"
            listLabel.text = "Orange\n\nGreen\n\n'Any Decal'"
        }
        else if stringPassed == "Blue" {
            self.view.backgroundColor = UIColor(red: 0x00/0xFF, green: 0x33/0xFF, blue: 0xcc/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Faculty and staff members"
            listLabel.text = "Blue\n\nGreen\n\n'Any Decal'"
        }
        else if stringPassed == "Medical Resident" {
            self.view.backgroundColor = UIColor(red: 0x00/0xFF, green: 0x33/0xFF, blue: 0x99/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "UF Health medical residents"
            listLabel.text = "Orange\n\nGreen\n\nRed 1\n\nAll Red\n\nBrown\n\n'Any Decal'"
        }
        else if stringPassed == "UF Health South" {
            self.view.backgroundColor = UIColor(red: 0xff/0xFF, green: 0xff/0xFF, blue: 0x66/0xFF, alpha: 0xFF/0xFF)
            
            self.titleLabel.textColor = UIColor.black
            self.descriptionLabel.textColor = UIColor.black
            self.optionsTitleLabel.textColor = UIColor.black
            self.listLabel.textColor = UIColor.black
            
            descriptionLabel.text = "UF Health faculty and staff"
            listLabel.text = "UF Health South Garage"
        }
        else if stringPassed == "Staff Commuter" {
            self.view.backgroundColor = UIColor(red: 0x26/0xFF, green: 0x99/0xFF, blue: 0x00/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Faculty and staff members, full-time OPS employees not affiliated as students"
            listLabel.text = "Green\n\n'Any Decal'"
        }
        else if stringPassed == "Gated" {
            self.view.backgroundColor = UIColor(red: 0x99/0xFF, green: 0x33/0xFF, blue: 0x99/0xFF, alpha: 0xFF/0xFF)
            
            descriptionLabel.text = "Faculty and staff members who previously purchased an Official Gated or Gated decal"
            listLabel.text = "Gated"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
