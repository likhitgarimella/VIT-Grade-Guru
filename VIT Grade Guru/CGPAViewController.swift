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
    
    @IBOutlet var currentGPA: FloatLabelTextField!
    @IBOutlet var currentSemCredits: FloatLabelTextField!
    @IBOutlet var cgpaBeforeThisSem: FloatLabelTextField!
    @IBOutlet var creditsFinished: FloatLabelTextField!
    
    @IBOutlet var cgpaButtonOutlet: UIButton!
    
    // Function for calculations
    func Calculations() {
        
        let string1 = currentGPA.text!
        let number1 = Int(string1)
        let string2 = currentSemCredits.text!
        let number2 = Int(string2)
        let string3 = cgpaBeforeThisSem.text!
        let number3 = Int(string3)
        let string4 = creditsFinished.text!
        let number4 = Int(string4)
        
        let lenghtOfChar = (number2!+number4!)
        guard lenghtOfChar != 0 else { return }
        
        // Actual Formula
        answer.text = String(((number3!*number4!)+(number1!*number2!))/lenghtOfChar)
        
    }       // Entire Calculations Function
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    // Function For Autoset Validation For TextFields
    func Autoset() {
        
        currentGPA.keyboardType = .decimalPad
        currentGPA.text = "\(self.currentgpanumber)"
        currentGPA.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        currentSemCredits.keyboardType = .decimalPad
        currentSemCredits.text = "\(self.currentsemcreditsnumber)"
        currentSemCredits.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        cgpaBeforeThisSem.keyboardType = .decimalPad
        cgpaBeforeThisSem.text = "\(self.cgpabeforethissemnumber)"
        cgpaBeforeThisSem.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        creditsFinished.keyboardType = .decimalPad
        creditsFinished.text = "\(self.creditsfinishednumber)"
        creditsFinished.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
    }
    
    // Autoset Validation For TextFields
    var currentgpanumber: Int = 0 {
        didSet {
            if currentgpanumber > 10 {
                currentgpanumber = 10
                self.currentGPA.text = "\(currentgpanumber)"
            }
        }
    }
    var currentsemcreditsnumber: Int = 0 {
        didSet {
            if currentsemcreditsnumber > 27 {
                currentsemcreditsnumber = 27
                self.currentSemCredits.text = "\(currentsemcreditsnumber)"
            }
        }
    }
    var cgpabeforethissemnumber: Int = 0 {
        didSet {
            if cgpabeforethissemnumber > 10 {
                cgpabeforethissemnumber = 10
                self.cgpaBeforeThisSem.text = "\(cgpabeforethissemnumber)"
            }
        }
    }
    var creditsfinishednumber: Int = 0 {
        didSet {
            if creditsfinishednumber > 180 {
                creditsfinishednumber = 180
                self.creditsFinished.text = "\(creditsfinishednumber)"
            }
        }
    }
    
    // ObjC Function For Autoset Validation For TextFields
    @objc func didChangeText() {
        if let num1 = Int(self.currentGPA.text!) {
            self.currentgpanumber = Int(num1)
        }
        if let num2 = Int(self.currentSemCredits.text!) {
            self.currentsemcreditsnumber = Int(num2)
        }
        if let num3 = Int(self.cgpaBeforeThisSem.text!) {
            self.cgpabeforethissemnumber = Int(num3)
        }
        if let num4 = Int(self.creditsFinished.text!) {
            self.creditsfinishednumber = Int(num4)
        }
    }
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        // TopBar UIView Properties
        TopBar()
        
        // Underline for TextField
        UnderlineTextField()
        
        // Autoset Validation For TextFields
        Autoset()
        
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
        currentGPA.setUnderLine()
        currentSemCredits.setUnderLine()
        cgpaBeforeThisSem.setUnderLine()
        creditsFinished.setUnderLine()
        
    }
    
    func ButtonProp() {
        
        // Button Properties
        cgpaButtonOutlet.backgroundColor = .systemBlue
        cgpaButtonOutlet.layer.cornerRadius = 6
        //buttonOutlet.layer.borderWidth = 1
        //buttonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
    }
    
    @IBAction func calculateCgpa(_ sender: UIButton) {
        
        Calculations()
        
        // PopUp Animation
        PopUpAnimation()
            
        // PopUp UIView Properties
        PopUpProp()
        
        AnimateIn(desiredView: blurView)    // This First
        AnimateIn(desiredView: popUpView)   // This Next
        
    }
    
    func PopUpAnimation() {
        
        blurView.bounds = self.view.bounds
        popUpView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width*0.68, height: self.view.bounds.height*0.4)
        
    }
    
    // Animate in a specified view
    func AnimateIn(desiredView: UIView) {
        
        let backgroundView = self.view!
        
        // Attach our desired view to the screen
        backgroundView.addSubview(desiredView)
        
        // Sets the view's scaling to be 120%
        desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        desiredView.alpha = 0
        desiredView.center = backgroundView.center
        // Animate from here ⬆️
        
        // To here ⬇️
        // Animate the effect
        UIView.animate(withDuration: 0.2, animations: {
            desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            desiredView.alpha = 1
        })
        
    }
    
    // Animate out a specified view
    func AnimateOut(desiredView: UIView) {
        
       UIView.animate(withDuration: 0.2, animations: {
            desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            desiredView.alpha = 1
       }, completion: { _ in
        // This code runs when when above AnimateOut animation is done
        desiredView.removeFromSuperview()
       })
        
    }
    
    @IBOutlet var blurView: UIVisualEffectView!
    
    @IBOutlet var popUpView: UIView!
    
    @IBOutlet var answer: UILabel!
    
    @IBOutlet var imagePop: UIImageView!
    
    @IBOutlet var labelDescription: UILabel!
    
    @IBOutlet var okOutlet: UIButton!
    
    func PopUpProp() {
        
        popUpView.layer.cornerRadius = 16
        okOutlet.layer.cornerRadius = 16
        okOutlet.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
    }
    
    @IBAction func Ok(_ sender: UIButton) {
        
        AnimateOut(desiredView: popUpView)  // This First
        AnimateOut(desiredView: blurView)   // This Next
        
    }
    
}
