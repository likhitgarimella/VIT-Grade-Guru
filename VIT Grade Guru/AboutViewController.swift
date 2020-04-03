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
    @IBOutlet var Icon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Desc.backgroundColor = UIColor(red: 233.0/255.0, green: 243.0/255.0, blue: 252.0/255.0, alpha: 1.0)
        Desc.layer.cornerRadius = 30
    
    }
    
}   // #25
