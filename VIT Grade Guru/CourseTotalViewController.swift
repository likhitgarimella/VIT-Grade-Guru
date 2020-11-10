//
//  CourseTotalViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 23/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class CourseTotalViewController: UIViewController {
    
    // Outlets
    @IBOutlet var topBar: UIView!
    @IBOutlet var VIT: UILabel!
    @IBOutlet var Grade: UILabel!
    @IBOutlet var Guru: UILabel!
    
    @IBOutlet var labSwitch: UISwitch!
    @IBOutlet var projectSwitch: UISwitch!
    @IBOutlet var cat1: UITextField!
    @IBOutlet var cat2: UITextField!
    @IBOutlet var da1: UITextField!
    @IBOutlet var da2: UITextField!
    @IBOutlet var da3: UITextField!
    @IBOutlet var addlLearning: UITextField!
    @IBOutlet var lab: UITextField!
    @IBOutlet var labLabel: UILabel!
    @IBOutlet var project: UITextField!
    @IBOutlet var projectLabel: UILabel!
    @IBOutlet var buttonOutlet: UIButton!
    
    // Function for calculations
    func Calculations() {
        
        // String to Double conversions
        let string1 = cat1.text!
        let number1 = Double(string1)
        let string2 = cat2.text!
        let number2 = Double(string2)
        let string3 = da1.text!
        let number3 = Double(string3)
        let string4 = da2.text!
        let number4 = Double(string4)
        let string5 = da3.text!
        let number5 = Double(string5)
        let string6 = addlLearning.text!
        var number6 = Double(string6)
        let string7 = lab.text!
        let number7 = Double(string7)
        let string8 = project.text!
        let number8 = Double(string8)
        
        // Textfield Validation
        if (addlLearning.text!.isEmpty) {
           number6 = 0
        }
        
        
        // If both Lab and Project Switches are On
        if labSwitch.isOn==true && projectSwitch.isOn==true {
            if (lab.text!.isEmpty || project.text!.isEmpty) {
                print("Empty Fields Last Two")
                // If Lab and Project Fields are empty
            } else {
            answer.text = String(format: "%.2f", (1*( ( ((3*(number1!+number2!))/10) + number3! + number4! + number5! ) + ((2*(((3*(number1!+number2!))/10) + number3! + number4! + number5!))/3) + number6! )/2) + (number7! + (2*(number7!)/3))/4 + (number8!)/4)
            }   // If Lab and Project Fields aren't empty
        }
        
        // If Lab Switch is On and Project Switch is Off
        if labSwitch.isOn==true && projectSwitch.isOn==false {
            if (lab.text!.isEmpty) {
                print("Empty Lab Field")
                // If Lab Field is empty
            } else {
                answer.text = String(format: "%.2f", (3*( ( ((3*(number1!+number2!))/10) + number3! + number4! + number5! ) + ((2*(((3*(number1!+number2!))/10) + number3! + number4! + number5!))/3) + number6! )/4) + (number7! + (2*(number7!)/3))/4)
            }   // If Lab Field isn't empty
        }
        
        // If Lab Switch is Off and Project Switch is On
        if labSwitch.isOn==false && projectSwitch.isOn==true {
            if (project.text!.isEmpty) {
                print("Empty Project Field")
                // If Project Field is empty
            } else {
                answer.text = String(format: "%.2f", (3*( ( ((3*(number1!+number2!))/10) + number3! + number4! + number5! ) + ((2*(((3*(number1!+number2!))/10) + number3! + number4! + number5!))/3) + number6! )/4) + (number8!)/4)
            }   // If Project Field isn't empty
        }
        
        // If both Lab and Project Switches are Off
        if labSwitch.isOn==false && projectSwitch.isOn==false {
            answer.text = String(format: "%.2f", ( ((3*(number1!+number2!))/10) + number3! + number4! + number5! ) + ((2*(((3*(number1!+number2!))/10) + number3! + number4! + number5!))/3) + number6!)
        }
    }           // Entire Calculations Function
    
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    // Function For Autoset Validation For TextFields
    func Autoset() {
        
        cat1.keyboardType = .decimalPad
        cat1.text = ""      // Initialise empty textfield
        cat1.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        cat2.keyboardType = .decimalPad
        cat2.text = ""      // Initialise empty textfield
        cat2.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da1.keyboardType = .decimalPad
        da1.text = ""       // Initialise empty textfield
        da1.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da2.keyboardType = .decimalPad
        da2.text = ""       // Initialise empty textfield
        da2.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da3.keyboardType = .decimalPad
        da3.text = ""       // Initialise empty textfield
        da3.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        addlLearning.keyboardType = .decimalPad
        addlLearning.text = ""       // Initialise empty textfield
        addlLearning.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        lab.keyboardType = .decimalPad
        lab.text = ""       // Initialise empty textfield
        lab.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        project.keyboardType = .decimalPad
        project.text = ""   // Initialise empty textfield
        project.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
    }
    
    // Autoset Validation For TextFields
    var cat1number: Double = 0.0 {
        didSet {
            if cat1number > 50.0 {
                cat1number = 50.0
                self.cat1.text = "\(cat1number)"
            }
        }
    }
    var cat2number: Double = 0.0 {
        didSet {
            if cat2number > 50.0 {
                cat2number = 50.0
                self.cat2.text = "\(cat2number)"
            }
        }
    }
    var da1number: Double = 0.0 {
        didSet {
            if da1number > 10.0 {
                da1number = 10.0
                self.da1.text = "\(da1number)"
            }
        }
    }
    var da2number: Double = 0.0 {
        didSet {
            if da2number > 10.0 {
                da2number = 10.0
                self.da2.text = "\(da2number)"
            }
        }
    }
    var da3number: Double = 0.0 {
        didSet {
            if da3number > 10.0 {
                da3number = 10.0
                self.da3.text = "\(da3number)"
            }
        }
    }
    var addlLearningnumber: Double = 0.0 {
        didSet {
            if addlLearningnumber > 10.0 {
                addlLearningnumber = 10.0
                self.addlLearning.text = "\(addlLearningnumber)"
            }
        }
    }
    var labnumber: Double = 0.0 {
        didSet {
            if labnumber > 100.0 {
                labnumber = 100.0
                self.lab.text = "\(labnumber)"
            }
        }
    }
    var projectnumber: Double = 0.0 {
        didSet {
            if projectnumber > 100.0 {
                projectnumber = 100.0
                self.project.text = "\(projectnumber)"
            }
        }
    }
    
    // ObjC Function For Autoset Validation For TextFields
    @objc func didChangeText() {
        if let num1 = Double(self.cat1.text!) {
            self.cat1number = Double(num1)
        }
        if let num2 = Double(self.cat2.text!) {
            self.cat2number = Double(num2)
        }
        if let num3 = Double(self.da1.text!) {
            self.da1number = Double(num3)
        }
        if let num4 = Double(self.da2.text!) {
            self.da2number = Double(num4)
        }
        if let num5 = Double(self.da3.text!) {
            self.da3number = Double(num5)
        }
        if let num6 = Double(self.addlLearning.text!) {
            self.addlLearningnumber = Double(num6)
        }
        if let num7 = Double(self.lab.text!) {
            self.labnumber = Double(num7)
        }
        if let num8 = Double(self.project.text!) {
            self.projectnumber = Double(num8)
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
    
    func CornerRadius() {
        
        // Textfield Properties
        cat1.layer.cornerRadius = 6
        cat2.layer.cornerRadius = 6
        da1.layer.cornerRadius = 6
        da2.layer.cornerRadius = 6
        da3.layer.cornerRadius = 6
        addlLearning.layer.cornerRadius = 6
        lab.layer.cornerRadius = 6
        project.layer.cornerRadius = 6

    }
    
    func ButtonProp() {
        
        // Button Properties
        buttonOutlet.clipsToBounds = true
        buttonOutlet.layer.cornerRadius = 6
        buttonOutlet.backgroundColor = UIColor(red: 167/255.0, green: 97/255.0, blue: 242/255.0, alpha: 1.0)
        
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
        
        sender.flash()
        
        // 1 // If both Lab and Project Switches are On
        if labSwitch.isOn==true && projectSwitch.isOn==true {
        if (cat1.text!.isEmpty || cat2.text!.isEmpty || da1.text!.isEmpty || da2.text!.isEmpty || da3.text!.isEmpty || lab.text!.isEmpty || project.text!.isEmpty) {
            // Alert
            let myAlert = UIAlertController(title: "Empty Fields", message: "", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated: true, completion: nil)
            return
        }
        }
        
        // 2 // If Lab Switch is On and Project Switche is Off
        if labSwitch.isOn==true && projectSwitch.isOn==false {
        if (cat1.text!.isEmpty || cat2.text!.isEmpty || da1.text!.isEmpty || da2.text!.isEmpty || da3.text!.isEmpty || lab.text!.isEmpty) {
            // Alert
            let myAlert = UIAlertController(title: "Empty Fields", message: "", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated: true, completion: nil)
            return
        }
        }
        
        // 3 // If Lab Switch is Off and Project Switche is On
        if labSwitch.isOn==false && projectSwitch.isOn==true {
        if (cat1.text!.isEmpty || cat2.text!.isEmpty || da1.text!.isEmpty || da2.text!.isEmpty || da3.text!.isEmpty || project.text!.isEmpty) {
            // Alert
            let myAlert = UIAlertController(title: "Empty Fields", message: "", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated: true, completion: nil)
            return
        }
        }
        
        // 4 // If both Lab and Project Switches are Off
        if labSwitch.isOn==false && projectSwitch.isOn==false {
        if (cat1.text!.isEmpty || cat2.text!.isEmpty || da1.text!.isEmpty || da2.text!.isEmpty || da3.text!.isEmpty) {
            // Alert
            let myAlert = UIAlertController(title: "Empty Fields", message: "", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated: true, completion: nil)
            return
        }
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
        self.cat1.text = ""
        self.cat2.text = ""
        self.da1.text = ""
        self.da2.text = ""
        self.da3.text = ""
        self.addlLearning.text = ""
        self.lab.text = ""
        self.project.text = ""
        
        //And to enable back for a new input in textfield
        self.cat1.isEnabled = true
        self.cat2.isEnabled = true
        self.da1.isEnabled = true
        self.da2.isEnabled = true
        self.da3.isEnabled = true
        self.addlLearning.isEnabled = true
        self.lab.isEnabled = true
        self.project.isEnabled = true
        
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
        if (87.5...1000 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 1")
            labelDescription.text = "Outstanding!"
        }
        if (75..<87.5 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 2")
            labelDescription.text = "Keep it up!"
        }
        if (62.5..<75 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 3")
            labelDescription.text = "Good!"
        }
        if (50..<62.5 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 4")
            labelDescription.text = "Do better!"
        }
        if (0..<50 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 5")
            labelDescription.text = "Work hard!"
        }
        
        
        if ((outputNumber ?? 100) > 100) {
            answer.text = "100.00"
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
    
}   // #530
