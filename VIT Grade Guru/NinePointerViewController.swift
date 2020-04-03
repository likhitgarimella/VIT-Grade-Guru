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
    
    // Function for calculations
    func Calculations() {
        
        let string1 = selectPointer.text!
        let number1 = Double(string1.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string2 = currentSemCgpa.text!
        let number2 = Double(string2)
        let string3 = creditsFinished.text!
        let number3 = Double(string3)
        let string4 = currentCredits.text!
        let number4 = Double(string4)
        
        // Actual Formula
        answer.text = String(format: "%.2f", ((number1!*(number3!+number4!))-(number2!*number3!))/number4!)
        
    }       // Entire Calculations Function
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    // Function For Autoset Validation For TextFields
    func Autoset() {
        
        currentSemCgpa.keyboardType = .decimalPad
        currentSemCgpa.text = ""
        currentSemCgpa.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        creditsFinished.keyboardType = .decimalPad
        creditsFinished.text = ""
        creditsFinished.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        currentCredits.keyboardType = .decimalPad
        currentCredits.text = ""
        currentCredits.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        }
        
        // Autoset Validation For TextFields
        var currentsemcgpanumber: Double = 0.0 {
            didSet {
                if currentsemcgpanumber > 10.0 {
                    currentsemcgpanumber = 10.0
                    self.currentSemCgpa.text = "\(currentsemcgpanumber)"
                }
            }
        }
        var creditsfinishednumber: Double = 0.0 {
            didSet {
                if creditsfinishednumber > 180.0 {
                    creditsfinishednumber = 180.0
                    self.creditsFinished.text = "\(creditsfinishednumber)"
                }
            }
        }
        var currentcreditsnumber: Double = 0.0 {
            didSet {
                if currentcreditsnumber > 27.0 {
                    currentcreditsnumber = 27.0
                    self.currentCredits.text = "\(currentcreditsnumber)"
                }
            }
        }
        
        // ObjC Function For Autoset Validation For TextFields
        @objc func didChangeText() {
            if let num2 = Double(self.currentSemCgpa.text!) {
                self.currentsemcgpanumber = Double(num2)
            }
            if let num3 = Double(self.creditsFinished.text!) {
                self.creditsfinishednumber = Double(num3)
            }
            if let num4 = Double(self.currentCredits.text!) {
                self.currentcreditsnumber = Double(num4)
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
        
        // DropDown Options For TextFields
        DropDownOptions()
        
        // Button Properties
        ButtonProp()
        
        // PopUp UIView Properties
        PopUpProp()

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
        selectPointer.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
    }
    
    func ButtonProp() {
        
        // Button Properties
        calculateButtonOutlet.backgroundColor = .systemBlue
        calculateButtonOutlet.layer.cornerRadius = 6
        //buttonOutlet.layer.borderWidth = 1
        //buttonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        
        if ((selectPointer.text!.isEmpty || currentSemCgpa.text!.isEmpty || creditsFinished.text!.isEmpty || currentCredits.text!.isEmpty))
        {
            // Alert
            let myAlert = UIAlertController(title: "Empty Fields", message: "", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated: true, completion: nil)
            return
        }
        
        Calculations()
        
        // PopUp Animation
        PopUpAnimation()
            
        AnimateIn(desiredView: blurView)    // This First
        AnimateIn(desiredView: popUpView)   // This Next
        
        // Clear textfields after popup goes off
        ClearTextFields()
        
    }
    
    func ClearTextFields() {
        
        // Clear textfields after popup goes off
        self.selectPointer.text = ""
        self.currentSemCgpa.text = ""
        self.creditsFinished.text = ""
        self.currentCredits.text = ""
        
        
        //And to enable back for a new input in textfield
        self.selectPointer.isEnabled = true
        self.currentSemCgpa.isEnabled = true
        self.creditsFinished.isEnabled = true
        self.currentCredits.isEnabled = true
        
    }
    
    func PopUpAnimation() {
        
        blurView.bounds = self.view.bounds
        popUpView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width*0.68, height: self.view.bounds.height*0.2)
        
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
    
} // #212
