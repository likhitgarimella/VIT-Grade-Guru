//
//  NinePointerViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 19/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class NinePointerViewController: UIViewController {
    
    @IBOutlet var topBar: UIView!
    
    @IBOutlet var selectPointer: DropDown!
    @IBOutlet var currentSemCgpa: FloatLabelTextField!
    @IBOutlet var creditsFinished: FloatLabelTextField!
    @IBOutlet var currentCredits: FloatLabelTextField!
    
    @IBOutlet var calculateButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        // TopBar UIView Properties
        TopBar()
        
        // Underline for TextField
        UnderlineTextField()
        
        // DropDown Options For TextFields
        DropDownOptions()
        
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
        selectPointer.setUnderLine()
        currentSemCgpa.setUnderLine()
        creditsFinished.setUnderLine()
        currentCredits.setUnderLine()
        
    }
    
    func DropDownOptions() {
    
        // DropDown Options For Credits TextFields
        // Added additional .5 pointer options
        selectPointer.optionArray = ["9.5 Pointer", "9 Pointer", "8.5 Pointer", "8 Pointer", "7.5 Pointer", "7 Pointer", "6.5 Pointer", "6 Pointer"]
        selectPointer.selectedRowColor = UIColor(red:0.98, green:0.64, blue:0.10, alpha:1.0)
        
    }
    
    func ButtonProp() {
        
        // Button Properties
        calculateButtonOutlet.backgroundColor = .systemBlue
        calculateButtonOutlet.layer.cornerRadius = 6
        //buttonOutlet.layer.borderWidth = 1
        //buttonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
    }
    
}
