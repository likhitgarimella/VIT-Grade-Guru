//
//  FirstViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 19/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var topBar: UIView!
    
    @IBOutlet var credits01: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TopBar UIView Properties
        topBar.layer.masksToBounds = false
        topBar.layer.shadowRadius = 1
        topBar.layer.shadowOpacity = 0.5
        topBar.layer.shadowColor = UIColor.gray.cgColor
        topBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        credits01.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits01.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)

    }

}
