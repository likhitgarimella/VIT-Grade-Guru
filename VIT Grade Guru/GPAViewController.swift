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
    
    @IBOutlet var grade01: DropDown!
    @IBOutlet var grade02: DropDown!
    @IBOutlet var grade03: DropDown!
    @IBOutlet var grade04: DropDown!
    @IBOutlet var grade05: DropDown!
    @IBOutlet var grade06: DropDown!
    @IBOutlet var grade07: DropDown!
    @IBOutlet var grade08: DropDown!
    @IBOutlet var grade09: DropDown!
    @IBOutlet var grade10: DropDown!
    @IBOutlet var grade11: DropDown!
    
    @IBOutlet var cgpaButtonOutlet: UIButton!
    
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
        
        // Button Properties
        ButtonProp()
        
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
        
        grade01.setUnderLine()
        grade02.setUnderLine()
        grade03.setUnderLine()
        grade04.setUnderLine()
        grade05.setUnderLine()
        grade06.setUnderLine()
        grade07.setUnderLine()
        grade08.setUnderLine()
        grade09.setUnderLine()
        grade10.setUnderLine()
        grade11.setUnderLine()
        
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
        
        grade01.layer.cornerRadius = 20
        grade02.layer.cornerRadius = 20
        grade03.layer.cornerRadius = 20
        grade04.layer.cornerRadius = 20
        grade05.layer.cornerRadius = 20
        grade06.layer.cornerRadius = 20
        grade07.layer.cornerRadius = 20
        grade08.layer.cornerRadius = 20
        grade09.layer.cornerRadius = 20
        grade10.layer.cornerRadius = 20
        grade11.layer.cornerRadius = 20
        
    }
    
    func DropDownOptions() {
        
        // DropDown Options For Credits TextFields
        credits01.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits01.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits02.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits02.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits03.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits03.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits04.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits04.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits05.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits05.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits06.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits06.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits07.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits07.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits08.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits08.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits09.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits09.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits10.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits10.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        credits11.optionArray = [" 1 credit", " 2 credits", " 3 credits", " 4 credits", " 5 credits", " 6 credits", " 7 credits", " 8 credits", " 9 credits", " 10 credits"]
        credits11.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
        
        // DropDown Options For Grades TextFields
        grade01.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade01.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade02.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade02.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade03.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade03.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade04.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade04.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade05.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade05.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade06.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade06.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade07.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade07.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade08.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade08.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade09.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade09.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade10.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade10.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        grade11.optionArray = [" S grade", " A grade", " B grade", " C grade", " D grade", " E grade", " F grade"]
        grade11.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)

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
        
        
        grade01.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade01.frame.height))
        grade01.leftViewMode = .always
        grade02.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade02.frame.height))
        grade02.leftViewMode = .always
        grade03.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade03.frame.height))
        grade03.leftViewMode = .always
        grade04.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade04.frame.height))
        grade04.leftViewMode = .always
        grade05.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade05.frame.height))
        grade05.leftViewMode = .always
        grade06.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade06.frame.height))
        grade06.leftViewMode = .always
        grade07.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade07.frame.height))
        grade07.leftViewMode = .always
        grade08.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade08.frame.height))
        grade08.leftViewMode = .always
        grade09.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade09.frame.height))
        grade09.leftViewMode = .always
        grade10.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade10.frame.height))
        grade10.leftViewMode = .always
        grade11.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: grade11.frame.height))
        grade11.leftViewMode = .always
        
    }
    
    func ButtonProp() {
        
        // Button Properties
        cgpaButtonOutlet.backgroundColor = .systemBlue
        cgpaButtonOutlet.layer.cornerRadius = 6
        //buttonOutlet.layer.borderWidth = 1
        //buttonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
    }

}
