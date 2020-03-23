//
//  CGPAViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 19/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class CGPAViewController: UIViewController {
    
    @IBOutlet var topBar: UIView!
    
    @IBOutlet var currentGPA: UITextField!
    @IBOutlet var currentSemCredits: UITextField!
    @IBOutlet var cgpaBeforeThisSem: UITextField!
    @IBOutlet var creditsFinished: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        // TopBar UIView Properties
        TopBar()
        
        // Underline for TextField
        UnderlineTextField()

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
        currentGPA.setUnderLine()
        currentSemCredits.setUnderLine()
        cgpaBeforeThisSem.setUnderLine()
        creditsFinished.setUnderLine()
        
    }
    
}
