//
//  CourseTotalViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 23/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class CourseTotalViewController: UIViewController {
    
    @IBOutlet var topBar: UIView!
    
    @IBOutlet var labSwitch: UISwitch!
    @IBOutlet var projectSwitch: UISwitch!
    @IBOutlet var cat1: UITextField!
    @IBOutlet var cat2: UITextField!
    @IBOutlet var da1: UITextField!
    @IBOutlet var da2: UITextField!
    @IBOutlet var da3: UITextField!
    @IBOutlet var fat: UITextField!
    @IBOutlet var lab: UITextField!
    @IBOutlet var labLabel: UILabel!
    @IBOutlet var project: UITextField!
    @IBOutlet var projectLabel: UILabel!
    @IBOutlet var buttonOutlet: UIButton!
    
    // Function for calculations
    func Calculation() {
        
        let string1 = cat1.text!
        var number1 = Double(string1.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string2 = cat2.text!
        var number2 = Double(string2.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string3 = da1.text!
        var number3 = Double(string3.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string4 = da2.text!
        var number4 = Double(string4.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string5 = da3.text!
        var number5 = Double(string5.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string6 = fat.text!
        var number6 = Double(string6.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string7 = lab.text!
        var number7 = Double(string7.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string8 = project.text!
        var number8 = Double(string8.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        
        // Textfield Validation
        if (cat1.text!.isEmpty) {
           number1 = 0
        }
        if (cat2.text!.isEmpty) {
           number2 = 0
        }
        if (da1.text!.isEmpty) {
           number3 = 0
        }
        if (da2.text!.isEmpty) {
           number4 = 0
        }
        if (da3.text!.isEmpty) {
           number5 = 0
        }
        if (fat.text!.isEmpty) {
           number6 = 0
        }
        if (lab.text!.isEmpty) {
           number7 = 0
        }
        if (project.text!.isEmpty) {
           number8 = 0
        }
        
        if labSwitch.isOn==true && projectSwitch.isOn==true {
            if (lab.text!.isEmpty || project.text!.isEmpty) {
                print("Empty Fields Last Two")
                // If Lab and Project Fields are empty
            } else {
            answer.text = String( (( ((3*(number1!+number2!))/10) + number3! + number4! + number5! + ((2*number6!)/5) )/2) + (number7!)/4 + (number8!)/4)
            }   // If Lab and Project Fields aren't empty
        }   // If both Lab and Project Switches are On
        
        if labSwitch.isOn==true && projectSwitch.isOn==false {
            if (lab.text!.isEmpty) {
                print("Empty Lab Field")
                // If Lab Field is empty
            } else {
                answer.text = String( (3*( ((3*(number1!+number2!))/10) + number3! + number4! + number5! + ((2*number6!)/5) )/4) + (number7!)/4)
            }   // If Lab Field isn't empty
        }   // If Lab Switch is On and Project Switche is Off
        
        if labSwitch.isOn==false && projectSwitch.isOn==true {
            if (project.text!.isEmpty) {
                print("Empty Project Field")
                // If Project Field is empty
            } else {
                answer.text = String( (3*( ((3*(number1!+number2!))/10) + number3! + number4! + number5! + ((2*number6!)/5) )/4) + (number8!)/4)
            }   // If Project Field isn't empty
        }   // If Lab Switch is Off and Project Switche is On
        
        if labSwitch.isOn==false && projectSwitch.isOn==false {
            answer.text = String( ((3*(number1!+number2!))/10) + number3! + number4! + number5! + ((2*number6!)/5) )
        }       // If both Lab and Project Switches are Off
    }           // Entire Calculation Function
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    // Function For Autoset Validation For TextFields
    func Autoset() {
        
        cat1.keyboardType = .numberPad
        cat1.text = "\(self.cat1number)"
        cat1.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        cat2.keyboardType = .numberPad
        cat2.text = "\(self.cat2number)"
        cat2.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da1.keyboardType = .numberPad
        da1.text = "\(self.da1number)"
        da1.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da2.keyboardType = .numberPad
        da2.text = "\(self.da2number)"
        da2.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da3.keyboardType = .numberPad
        da3.text = "\(self.da3number)"
        da3.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        fat.keyboardType = .numberPad
        fat.text = "\(self.fatnumber)"
        fat.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        lab.keyboardType = .numberPad
        lab.text = "\(self.labnumber)"
        lab.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        project.keyboardType = .numberPad
        project.text = "\(self.projectnumber)"
        project.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
    }
    
    // Autoset Validation For TextFields
    var cat1number: Int = 0 {
        didSet {
            if cat1number > 50 {
                cat1number = 50
                self.cat1.text = "\(cat1number)"
            }
        }
    }
    var cat2number: Int = 0 {
        didSet {
            if cat2number > 50 {
                cat2number = 50
                self.cat2.text = "\(cat2number)"
            }
        }
    }
    var da1number: Int = 0 {
        didSet {
            if da1number > 10 {
                da1number = 10
                self.da1.text = "\(da1number)"
            }
        }
    }
    var da2number: Int = 0 {
        didSet {
            if da2number > 10 {
                da2number = 10
                self.da2.text = "\(da2number)"
            }
        }
    }
    var da3number: Int = 0 {
        didSet {
            if da3number > 10 {
                da3number = 10
                self.da3.text = "\(da3number)"
            }
        }
    }
    var fatnumber: Int = 0 {
        didSet {
            if fatnumber > 100 {
                fatnumber = 100
                self.fat.text = "\(fatnumber)"
            }
        }
    }
    var labnumber: Int = 0 {
        didSet {
            if labnumber > 100 {
                labnumber = 100
                self.lab.text = "\(labnumber)"
            }
        }
    }
    var projectnumber: Int = 0 {
        didSet {
            if projectnumber > 100 {
                projectnumber = 100
                self.project.text = "\(projectnumber)"
            }
        }
    }
    
    // ObjC Function For Autoset Validation For TextFields
    @objc func didChangeText() {
        if let num1 = Double(self.cat1.text!) {
            self.cat1number = Int(num1)
        }
        if let num2 = Double(self.cat2.text!) {
            self.cat2number = Int(num2)
        }
        if let num3 = Double(self.da1.text!) {
            self.da1number = Int(num3)
        }
        if let num4 = Double(self.da2.text!) {
            self.da2number = Int(num4)
        }
        if let num5 = Double(self.da3.text!) {
            self.da3number = Int(num5)
        }
        if let num6 = Double(self.fat.text!) {
            self.fatnumber = Int(num6)
        }
        if let num7 = Double(self.lab.text!) {
            self.labnumber = Int(num7)
        }
        if let num8 = Double(self.project.text!) {
            self.projectnumber = Int(num8)
        }
    }
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        // TopBar UIView Properties
        TopBar()
        
        // Autoset Validation For TextFields
        Autoset()
        
        // Textfield Properties
        CornerRadius()
        
        // Button Properties
        ButtonProp()
        
        // PopUp UIView Properties
        PopUpProp()
        
        // popUpView.layer.masksToBounds = true
        // popUpView.setGradientBackground(colorOne: Colors.white, colorTwo: Colors.blue)

    }
    
    func TopBar() {
        
        // TopBar UIView Properties
        topBar.layer.masksToBounds = false
        topBar.layer.shadowRadius = 1
        topBar.layer.shadowOpacity = 0.5
        topBar.layer.shadowColor = UIColor.gray.cgColor
        topBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        
    }
    
    func CornerRadius() {
        
        // Textfield Properties
        cat1.layer.cornerRadius = 6
        cat2.layer.cornerRadius = 6
        da1.layer.cornerRadius = 6
        da2.layer.cornerRadius = 6
        da3.layer.cornerRadius = 6
        fat.layer.cornerRadius = 6
        lab.layer.cornerRadius = 6
        project.layer.cornerRadius = 6

    }
    
    func ButtonProp() {
        
        // Button Properties
        buttonOutlet.backgroundColor = .systemBlue
        buttonOutlet.layer.cornerRadius = 6
        //buttonOutlet.layer.borderWidth = 1
        //buttonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
    }
    
    @IBAction func enableLab(_ sender: UISwitch) {
        
        if labSwitch.isOn==true {
            labLabel.isHidden=false
            lab.isHidden=false
        }
        if labSwitch.isOn==false {
            labLabel.isHidden=true
            lab.isHidden=true
        }
        
    }
    
    @IBAction func enableProject(_ sender: UISwitch) {
        
        if projectSwitch.isOn==true {
            projectLabel.isHidden=false
            project.isHidden=false
        }
        if projectSwitch.isOn==false {
            projectLabel.isHidden=true
            project.isHidden=true
        }

    }

    
    @IBAction func button(_ sender: UIButton) {
        
        Calculation()
        
        // PopUp Animation
        PopUpAnimation()
        
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
