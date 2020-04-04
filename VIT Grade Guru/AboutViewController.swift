//
//  AboutViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 28/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet var Desc: UIView!
    @IBOutlet var VIT: UILabel!
    @IBOutlet var Grade: UILabel!
    @IBOutlet var Guru: UILabel!
    @IBOutlet var Developers: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Desc.backgroundColor = UIColor(red: 233.0/255.0, green: 243.0/255.0, blue: 252.0/255.0, alpha: 1.0)
        Desc.layer.cornerRadius = 30
        VIT.textColor = UIColor(red: 58/255.0, green: 98/255.0, blue: 130/255.0, alpha: 1.0)
        Grade.textColor = UIColor(red: 58/255.0, green: 98/255.0, blue: 130/255.0, alpha: 1.0)
        Guru.textColor = UIColor(red: 58/255.0, green: 98/255.0, blue: 130/255.0, alpha: 1.0)
        Developers.textColor = UIColor(red: 58/255.0, green: 98/255.0, blue: 130/255.0, alpha: 1.0)
    
    }
    
}   // #32
