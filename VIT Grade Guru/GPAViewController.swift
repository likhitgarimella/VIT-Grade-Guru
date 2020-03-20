//
//  CourseTotalViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 19/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class CourseTotalViewController: UIViewController {
    
    @IBOutlet var topBar: UIView!
    
    @IBOutlet var credits01: DropDown!
    @IBOutlet var credits02: DropDown!
    @IBOutlet var credits03: DropDown!
    @IBOutlet var credits04: DropDown!
    @IBOutlet var credits05: DropDown!
    @IBOutlet var credits06: DropDown!
    @IBOutlet var credits07: DropDown!
    @IBOutlet var credits08: DropDown!
    @IBOutlet var credits09: DropDown!
    @IBOutlet var credits10: DropDown!
    @IBOutlet var credits11: DropDown!
    @IBOutlet var credits12: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        // TopBar UIView Properties
        topBar.layer.masksToBounds = false
        topBar.layer.shadowRadius = 1
        topBar.layer.shadowOpacity = 0.5
        topBar.layer.shadowColor = UIColor.gray.cgColor
        topBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        credits01.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits01.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits02.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits02.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits03.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits03.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits04.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits04.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits05.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits05.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits06.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits06.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits07.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits07.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits08.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits08.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits09.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits09.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits10.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits10.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits11.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits11.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits12.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credit", "8 credits", "9 credits", "10 credits"]
        credits12.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)

    }

}
