//
//  GPAViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 19/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class GPAViewController: UIViewController {
    
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
        TopBar()
        
        // Underline for TextField
        UnderlineTextField()
        
        // Textfield Properties
        CornerRadius()
        
        // DropDown Options For TextFields
        DropDownOptions()
        
        // Create a padding view for padding on LEFT
        LeftPadding()
        
    }
    
    func TopBar() {
        
        // TopBar UIView Properties
        topBar.layer.masksToBounds = false
        topBar.layer.shadowRadius = 1
        topBar.layer.shadowOpacity = 0.5
        topBar.layer.shadowColor = UIColor.gray.cgColor
        topBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        
    }
    
    func UnderlineTextField() {
        
        // Underline for TextField
        credits01.setUnderLine()
        credits02.setUnderLine()
        credits03.setUnderLine()
        credits04.setUnderLine()
        credits05.setUnderLine()
        credits06.setUnderLine()
        credits07.setUnderLine()
        credits08.setUnderLine()
        credits09.setUnderLine()
        credits10.setUnderLine()
        credits11.setUnderLine()
        credits12.setUnderLine()
        
    }
    
    func CornerRadius() {
        
        // Textfield Properties
        credits01.layer.cornerRadius = 20
        credits02.layer.cornerRadius = 20
        credits03.layer.cornerRadius = 20
        credits04.layer.cornerRadius = 20
        credits05.layer.cornerRadius = 20
        credits06.layer.cornerRadius = 20
        credits07.layer.cornerRadius = 20
        credits08.layer.cornerRadius = 20
        credits09.layer.cornerRadius = 20
        credits10.layer.cornerRadius = 20
        credits11.layer.cornerRadius = 20
        credits12.layer.cornerRadius = 20
        
    }
    
    func DropDownOptions() {
        
        // DropDown Options For TextFields
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
    
    func LeftPadding() {
        
        // Create a padding view for padding on LEFT
        credits01.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits01.frame.height))
        credits01.leftViewMode = .always
        credits02.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits02.frame.height))
        credits02.leftViewMode = .always
        credits03.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits03.frame.height))
        credits03.leftViewMode = .always
        credits04.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits04.frame.height))
        credits04.leftViewMode = .always
        credits05.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits05.frame.height))
        credits05.leftViewMode = .always
        credits06.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits06.frame.height))
        credits06.leftViewMode = .always
        credits07.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits07.frame.height))
        credits07.leftViewMode = .always
        credits08.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits08.frame.height))
        credits08.leftViewMode = .always
        credits09.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits09.frame.height))
        credits09.leftViewMode = .always
        credits10.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits10.frame.height))
        credits10.leftViewMode = .always
        credits11.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits11.frame.height))
        credits11.leftViewMode = .always
        credits12.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: credits12.frame.height))
        credits12.leftViewMode = .always
        
    }

}
