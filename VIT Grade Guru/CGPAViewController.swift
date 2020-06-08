//
//  CGPAViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 19/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class CGPAViewController: UIViewController {
    
    // Outlets
    @IBOutlet var topBar: UIView!
    @IBOutlet var VIT: UILabel!
    @IBOutlet var Grade: UILabel!
    @IBOutlet var Guru: UILabel!
    
    @IBOutlet var currentGPA: FloatLabelTextField!
    @IBOutlet var currentSemCredits: FloatLabelTextField!
    @IBOutlet var cgpaBeforeThisSem: FloatLabelTextField!
    @IBOutlet var creditsFinished: FloatLabelTextField!
    @IBOutlet var cgpaButtonOutlet: UIButton!
    
    // Function for calculations
    func Calculations() {
        
        let string1 = currentGPA.text!
        let number1 = Double(string1)
        let string2 = currentSemCredits.text!
        let number2 = Double(string2)
        let string3 = cgpaBeforeThisSem.text!
        let number3 = Double(string3)
        let string4 = creditsFinished.text!
        let number4 = Double(string4)
        
        // Actual Formula
        answer.text = String(format: "%.2f", ((number3!*number4!)+(number1!*number2!))/(number2!+number4!))
        
    }       // Entire Calculations Function
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    // Function For Autoset Validation For TextFields
    func Autoset() {
        
        currentGPA.keyboardType = .decimalPad
        currentGPA.text = ""            // Initialise empty textfield
        currentGPA.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        currentSemCredits.keyboardType = .decimalPad
        currentSemCredits.text = ""     // Initialise empty textfield
        currentSemCredits.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        cgpaBeforeThisSem.keyboardType = .decimalPad
        cgpaBeforeThisSem.text = ""     // Initialise empty textfield
        cgpaBeforeThisSem.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        creditsFinished.keyboardType = .decimalPad
        creditsFinished.text = ""       // Initialise empty textfield
        creditsFinished.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
    }
    
    // Autoset Validation For TextFields
    var currentgpanumber: Double = 0.0 {
        didSet {
            if currentgpanumber > 10.0 {
                currentgpanumber = 10.0
                self.currentGPA.text = "\(currentgpanumber)"
            }
        }
    }
    var currentsemcreditsnumber: Double = 0.0 {
        didSet {
            if currentsemcreditsnumber > 27.0 {
                currentsemcreditsnumber = 27.0
                self.currentSemCredits.text = "\(currentsemcreditsnumber)"
            }
        }
    }
    var cgpabeforethissemnumber: Double = 0.0 {
        didSet {
            if cgpabeforethissemnumber > 10.0 {
                cgpabeforethissemnumber = 10.0
                self.cgpaBeforeThisSem.text = "\(cgpabeforethissemnumber)"
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
    
    // ObjC Function For Autoset Validation For TextFields
    @objc func didChangeText() {
        if let num1 = Double(self.currentGPA.text!) {
            self.currentgpanumber = Double(num1)
        }
        if let num2 = Double(self.currentSemCredits.text!) {
            self.currentsemcreditsnumber = Double(num2)
        }
        if let num3 = Double(self.cgpaBeforeThisSem.text!) {
            self.cgpabeforethissemnumber = Double(num3)
        }
        if let num4 = Double(self.creditsFinished.text!) {
            self.creditsfinishednumber = Double(num4)
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
        VIT.textColor = UIColor(red: 95/255.0, green: 49/255.0, blue: 144/255.0, alpha: 1.0)
        Grade.textColor = UIColor(red: 95/255.0, green: 49/255.0, blue: 144/255.0, alpha: 1.0)
        Guru.textColor = UIColor(red: 95/255.0, green: 49/255.0, blue: 144/255.0, alpha: 1.0)
        
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
        cgpaButtonOutlet.clipsToBounds = true
        cgpaButtonOutlet.layer.cornerRadius = 6
        cgpaButtonOutlet.backgroundColor = UIColor(red: 167/255.0, green: 97/255.0, blue: 242/255.0, alpha: 1.0)
        
    }
    
    @IBAction func calculateCgpa(_ sender: UIButton) {
        
        sender.flash()
        
        if ((currentGPA.text!.isEmpty || currentSemCredits.text!.isEmpty || cgpaBeforeThisSem.text!.isEmpty || creditsFinished.text!.isEmpty))
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
        
        ChangeImageInPopUpView()
        
        // Clear textfields after popup goes off
        ClearTextFields()
        
    }
    
    func ClearTextFields() {
        
        // Clear textfields after popup goes off
        self.currentGPA.text = ""
        self.currentSemCredits.text = ""
        self.cgpaBeforeThisSem.text = ""
        self.creditsFinished.text = ""

        //And to enable back for a new input in textfield
        self.currentGPA.isEnabled = true
        self.currentSemCredits.isEnabled = true
        self.cgpaBeforeThisSem.isEnabled = true
        self.creditsFinished.isEnabled = true
        
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
    
    // Popup view outlets
    @IBOutlet var blurView: UIVisualEffectView!
    
    @IBOutlet var popUpView: UIView!
    
    @IBOutlet var answer: UILabel!
    
    @IBOutlet var imagePop: UIImageView!
    
    @IBOutlet var labelDescription: UILabel!
    
    @IBOutlet var okOutlet: UIButton!
    
    func PopUpProp() {
        
        popUpView.layer.cornerRadius = 16
        imagePop.layer.cornerRadius = 16
        imagePop.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        okOutlet.layer.cornerRadius = 16
        okOutlet.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
    }
    
    func ChangeImageInPopUpView() {
        
        let outputString = answer.text!
        let outputNumber = Double(outputString)
        
        // if (90...100 ~= outputNumber) // Forgot to unwrap
        // if (outputNumber == 10) // Forgot to set bounds
        if (9...10 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 1")
            labelDescription.text = "Outstanding!"
        }
        if (8..<9 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 2")
            labelDescription.text = "Keep it up!"
        }
        if (7..<8 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 3")
            labelDescription.text = "Good!"
        }
        if (6..<7 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 4")
            labelDescription.text = "Do better!"
        }
        if (0..<6 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 5")
            labelDescription.text = "Work hard!"
        }
        
        if ((outputNumber ?? 10) > 10) {
            answer.text = "Invalid!"
            labelDescription.text = ""
        }
        if ((outputNumber ?? 0) < 0) {
            answer.text = "Invalid!"
            labelDescription.text = ""
        }
        if (outputString == "nan") {
            answer.text = "Invalid!"
            labelDescription.text = ""
        }
        
    }
    
    @IBAction func Ok(_ sender: UIButton) {
        
        sender.flash()
        
        AnimateOut(desiredView: popUpView)  // This First
        AnimateOut(desiredView: blurView)   // This Next
        
    }
    
}   // #336
